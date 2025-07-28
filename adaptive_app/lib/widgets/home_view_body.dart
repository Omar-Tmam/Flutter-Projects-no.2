
import 'package:adaptive_app/widgets/desktop_layout.dart';
import 'package:adaptive_app/widgets/mobile_layout.dart';
import 'package:adaptive_app/widgets/tablet_layout.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return MobileLayout();
          } else if (constraints.maxWidth < 900) {
            return TabletLayout();
          } else {
            return DesktopLayout();
          }
        },
      ),
    );
  }
}
