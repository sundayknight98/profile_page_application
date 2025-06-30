import 'package:flutter/material.dart';
import 'details_screen.dart';
import '../info.dart';
import '../widgets/footer.dart';
import '../widgets/curved_background.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              const Hero(
                tag: 'backgroundImage',
                child: CurvedBackground(
                  height: 260,
                  imageAsset: 'assets/background.jpg',
                ),
              ),
              Positioned(
                bottom: -50,
                child: Hero(
                  tag: 'profilePhoto',
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: const CircleAvatar(
                      radius: 55,
                      backgroundImage: AssetImage('assets/profile.jpg'),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 70),
          Hero(
            tag: 'profileName',
            child: Material(
              color: Colors.transparent,
              child: Text(
                profileName,
                style: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 6),
          Hero(
            tag: 'occupation',
            child: Material(
              color: Colors.transparent,
              child: Text(
                occupation,
                style: const TextStyle(fontSize: 18, color: Colors.grey),
              ),
            ),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DetailsScreen()),
              );
            },
            child: const Text('View Details'),
          ),
          const Spacer(),
          const Footer(),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
