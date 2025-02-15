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
      onPressed: onTap,
      icon: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
    );
  }
}
