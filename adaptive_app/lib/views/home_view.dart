import 'package:adaptive_app/widgets/custom_drawer.dart';
import 'package:adaptive_app/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  GlobalKey<ScaffoldState> scaffoldKey =
      GlobalKey(); // Scaffold key to control the drawer
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey, // Assign the scaffold key to the Scaffold widget
      drawer: CustomDrawer(),
      backgroundColor: Color(0xffdbdbdb),
      appBar: MediaQuery.sizeOf(context).width - 32 < 900
          ? AppBar(
              backgroundColor: Colors.black,
              leading: GestureDetector(
                onTap: () {
                  scaffoldKey.currentState
                      ?.openDrawer(); // Open the drawer when the menu icon is tapped
                },
                child: Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
              ),
            )
          : null,
      body: HomeViewBody(),
    );
  }
}
