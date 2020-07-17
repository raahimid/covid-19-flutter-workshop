import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('COVID-19'),
      backgroundColor: Color(0xFF081E3F),
      elevation: 0.0,
      actions: <Widget>[
        IconButton(
        icon: const Icon(Icons.menu),
        iconSize: 28.0,
        onPressed: () {},
      ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
