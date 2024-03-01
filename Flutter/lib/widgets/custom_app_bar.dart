import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showFavoritesAction;

  const CustomAppBar({
    required this.title,
    this.showFavoritesAction = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      centerTitle: false,
      actions: [
        if (showFavoritesAction)
          IconButton(
            icon: const Icon(
              Icons.star,
              color: Colors.amber,
              size: 26,
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/favorites');
            },
          ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
