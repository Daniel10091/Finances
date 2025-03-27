import 'package:flutter/material.dart';

class ProfileAvatarAtom extends StatelessWidget {
  final String imageUrl;
  final VoidCallback onTap;

  const ProfileAvatarAtom({
    Key? key,
    required this.imageUrl,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 20,
      padding: const EdgeInsets.all(8),
      onPressed: onTap,
      icon: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
    );
  }
}
