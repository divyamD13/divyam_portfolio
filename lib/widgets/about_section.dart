import 'package:flutter/material.dart';
import 'package:divyam_portfolio/utils/constants.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 80.0),
      width: double.infinity,
      color: kSurfaceColor,
      child: Column(
        children: [
          Text(
            'About Me',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 40),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 800),
            child: Column(
              children: [
                const Text(
                  'I am a passionate Computer Science student at IIIT Bhagalpur with a strong foundation in Data Structures, Algorithms, and Software Engineering. My expertise lies in building dynamic and user-friendly applications using languages like C++, Dart, and Java, coupled with frameworks such as Flutter and Node.js. I thrive on solving complex problems and have a keen interest in creating efficient, scalable software solutions.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, height: 1.5, color: kSecondaryTextColor),
                ),
                const SizedBox(height: 32),
                Card(
                  color: kBackgroundColor,
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.school, color: kPrimaryColor, size: 28),
                            const SizedBox(width: 16),
                            Text(
                              'Education',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                        const Text(
                          'Indian Institute of Information Technology, Bhagalpur',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'B.Tech, Computer Science and Engineering (2022-2026)',
                          style: TextStyle(fontSize: 16, color: kSecondaryTextColor),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'CGPA: 8.76',
                          style: TextStyle(fontSize: 16, color: kSecondaryTextColor),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}