import 'package:flutter/material.dart';
class ProfileHeader extends StatelessWidget {
  final String name;
  final String nim;
  final String imagePath;

  const ProfileHeader({
    super.key,
    required this.name,
    required this.nim,
    required this.imagePath,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CircleAvatar(
          radius: 50,
          backgroundImage: NetworkImage(
            'https://picsum.photos/200', 
          ),
        ),
        const SizedBox(height: 12),
        Text(
          name,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4),
        Text(
          'NIM: $nim',
          style: const TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}