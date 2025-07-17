import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class NoDataView extends StatelessWidget {
  const NoDataView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Text(
            'Start Searching',
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 160, top: 100),
          child: Lottie.asset('assets/images/search.json'),
        ),
      ],
    );
  }
}
