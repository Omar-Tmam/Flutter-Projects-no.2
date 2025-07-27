import 'package:adaptive_app/models/drawer_item_model.dart';
import 'package:adaptive_app/widgets/custom_drawer_item.dart';
import 'package:flutter/material.dart';

class CustomDrawerItemsListView extends StatelessWidget {
  const CustomDrawerItemsListView({
    super.key,
    required this.drawerItems,
  });

  final List<DrawerItemModel> drawerItems;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
        itemCount: drawerItems.length,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return CustomDrawerItem(
            drawerItemModel: drawerItems[index],
          );
        });
  }
}