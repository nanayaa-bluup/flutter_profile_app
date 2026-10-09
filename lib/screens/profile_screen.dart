import 'package:flutter/material.dart';
import '../widgets/profile_header.dart';
import '../widgets/action_buttons.dart';
import 'about_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AboutScreen()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: const [
                    ProfileHeader(
                      name: 'Najwa Malika Anaya',
                      nim: '25.11.6304',
                      imagePath: 'assets/foto_naya.jpeg',
                    ),
                    Divider(height: 32),
                    ListTile(
                      leading: Icon(Icons.school, color: Colors.blue),
                      title: Text('S1 Informatika'),
                    ),
                    ListTile(
                      leading: Icon(Icons.email, color: Colors.blue),
                      title: Text('n.malika@students.amikom.ac.id'),
                    ),
                    ListTile(
                      leading: Icon(Icons.location_on, color: Colors.blue),
                      title: Text('Yogyakarta, Indonesia'),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            // a) Panggilan Widget ActionButtons
            const ActionButtons(),
          ],
        ),
      ),
    );
  }
}