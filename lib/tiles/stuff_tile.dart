import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String name;
  final String role;
  final String imageUrl;

  const CustomListTile({
    required this.name,
    required this.role,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name),
      subtitle: Text(role),
      leading: imageUrl != null
          ? CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
            )
          : null,
    );
  }
}
