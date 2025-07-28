import 'package:adaptive_app/widgets/custom_desktop_widget.dart';
import 'package:adaptive_app/widgets/custom_drawer.dart';
import 'package:adaptive_app/widgets/tablet_layout.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TabletLayout(),
          ),
          flex: 3,
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.only(top: 16),
          child: CustomDesktopWidget(),
        ))
      ],
    );
  }
}
