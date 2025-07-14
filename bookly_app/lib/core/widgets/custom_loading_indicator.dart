import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SpinKitWave(
        itemCount: 5,
        color: Colors.white,
        size: 50.0,
      ),
    );
  }
}
