import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:divyam_portfolio/utils/constants.dart';

class AchievementsSection extends StatelessWidget {
  const AchievementsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 80.0),
      color: kSurfaceColor,
      child: Column(
        children: [
          Text(
            'Achievements & Responsibilities',
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 900),
            child: const Wrap(
              alignment: WrapAlignment.center,
              spacing: 20,
              runSpacing: 20,
              children: [
                AchievementCard(
                  icon: FontAwesomeIcons.trophy,
                  text: 'Secured 16th rank out of 50 teams in Internal Hackathon for Smart India Hackathon (SIH) 2023.',
                ),
                AchievementCard(
                  icon: FontAwesomeIcons.code,
                  text: 'Secured 11th rank in PyC Code Clash out of 1K+ participants.',
                ),
                AchievementCard(
                  icon: FontAwesomeIcons.chartLine,
                  text: 'Achieved a maximum LeetCode rating of 1665 by solving 400+ problems.',
                ),
                AchievementCard(
                  icon: FontAwesomeIcons.users,
                  text: 'Club Lead for AppInvento, the official App Development Club of IIIT Bhagalpur.',
                ),
                 AchievementCard(
                  icon: FontAwesomeIcons.tasks,
                  text: 'Project Manager for OPCODE, an intra-college open-source event.',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class AchievementCard extends StatelessWidget {
  final IconData icon;
  final String text;

  const AchievementCard({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          FaIcon(icon, color: kPrimaryColor, size: 24),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(height: 1.4, color: kSecondaryTextColor),
            ),
          ),
        ],
      ),
    );
  }
}