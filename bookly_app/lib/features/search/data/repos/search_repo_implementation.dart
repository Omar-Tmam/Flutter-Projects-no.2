import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/search/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImplementation implements SearchRepo{
  final ApiService apiService;
  SearchRepoImplementation(this.apiService);
  @override
 Future<Either<Failure, List<BookModel>>> fetchSearchResults({
    required String query,
  }) async {
    try {
      var data = await apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=$query',
      );

      List<BookModel> books = (data['items'] as List)
          .where((item) => item['saleInfo']['saleability'] != 'NOT_FOR_SALE')
          .map((item) => BookModel.fromJson(item))
          .toList();

      return Right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
  }
