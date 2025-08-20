import 'package:flutter/material.dart';
import 'package:divyam_portfolio/utils/constants.dart';
import 'package:divyam_portfolio/services/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 80.0),
      width: double.infinity,
      child: Column(
        children: [
          CircleAvatar(
            radius: 90,
            backgroundImage:  const AssetImage('assets/images/profile_pic.jpg'),
          ),
          const SizedBox(height: 24),
          Text(
            'Divyam Divesh',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const SizedBox(height: 8),
          Text(
            'Full Stack Flutter Developer | B.Tech in Computer Science',
            style: Theme.of(
              context,
            ).textTheme.titleMedium?.copyWith(color: kSecondaryTextColor),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          const Text(
            'I am a passionate developer with a knack for creating elegant and efficient cross-platform applications. I have a strong foundation in computer science and love to solve complex problems.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, height: 1.5),
          ),
          const SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.github),
                onPressed: () => UrlLauncherService.launchUrl(GITHUB_URL),
                tooltip: 'GitHub',
              ),
              const SizedBox(width: 16),
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.linkedin),
                onPressed: () => UrlLauncherService.launchUrl(LINKEDIN_URL),
                tooltip: 'LinkedIn',
              ),
              const SizedBox(width: 16),
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.instagram, size: 28),
                onPressed: () => UrlLauncherService.launchUrl(INSTAGRAM_URL),
                tooltip: 'Instagram',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
