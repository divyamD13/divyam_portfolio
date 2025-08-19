import 'package:flutter/material.dart';
import 'package:divyam_portfolio/utils/constants.dart';
import 'package:divyam_portfolio/services/url_launcher.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 80.0),
      width: double.infinity,
      color: kBackgroundColor,
      child: Column(
        children: [
          Text(
            'Get in Touch',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 16),
          const Text(
            "I'm always open to discussing new projects, creative ideas, or opportunities to be part of an amazing team. Feel free to reach out!",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: kSecondaryTextColor),
          ),
          const SizedBox(height: 40),

ElevatedButton.icon(
  onPressed: () async {
    const String email = 'divyam.2201042cs@iiitbh.ac.in';
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: email,
      queryParameters: {
        'subject': 'Inquiry from your Portfolio Website!',
      },
    );

    try {
      // Use the launchUrl method with the specific launch mode
      await launchUrl(
        emailUri,
        mode: LaunchMode.externalApplication,
      );
    } catch (e) {
      // If launching fails, copy the email to the clipboard as a fallback
      await Clipboard.setData(const ClipboardData(text: email));
      
      // Show a confirmation message to the user
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Could not open email app. Email address copied to clipboard!'),
        ),
      );
    }
  },
  icon: const Icon(Icons.email),
  label: const Text('Say Hello'),
  style: ElevatedButton.styleFrom(
    foregroundColor: Colors.white,
    backgroundColor: kPrimaryColor,
    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
    textStyle: const TextStyle(fontSize: 18),
  ),
),

// ... rest of the file
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               IconButton(
                icon: const FaIcon(FontAwesomeIcons.github, size: 28),
                onPressed: () => UrlLauncherService.launchUrl(GITHUB_URL),
                tooltip: 'GitHub',
              ),
              const SizedBox(width: 24),
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.linkedin, size: 28),
                onPressed: () => UrlLauncherService.launchUrl(LINKEDIN_URL),
                tooltip: 'LinkedIn',
              ),
              const SizedBox(width: 24),
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.instagram, size: 28),
                onPressed: () => UrlLauncherService.launchUrl(INSTAGRAM_URL),
                tooltip: 'Instagram',
              ),
            ],
          ),
           const SizedBox(height: 60),
           const Text(
            '© 2025 Divyam Divesh. Built with Flutter.',
            style: TextStyle(color: kSecondaryTextColor),
          )
        ],
      ),
    );
  }
}