import 'package:flutter/material.dart';
import 'social_icon.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SocialIcon(icon: Icons.facebook, color: Colors.blue),
            SizedBox(width: 10),
            SocialIcon(icon: Icons.camera_alt, color: Colors.purple),
            SizedBox(width: 10),
            SocialIcon(icon: Icons.code, color: Colors.black),
            SizedBox(width: 10),
            SocialIcon(icon: Icons.work, color: Colors.blueGrey),
          ],
        ),
        const SizedBox(height: 12),
        Text(
          'Made by sundayknight98',
          style: TextStyle(
            color: isDark ? Colors.white54 : Colors.black54,
            fontStyle: FontStyle.italic,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
