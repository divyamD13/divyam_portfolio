import 'package:flutter/material.dart';
import 'package:divyam_portfolio/utils/constants.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 80.0),
      color: kBackgroundColor,
      child: Column(
        children: [
          Text(
            'Experience',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 40),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 800),
            child: Card(
              color: kSurfaceColor,
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Wrap(
                      spacing: 20,
                      runSpacing: 10,
                      alignment: WrapAlignment.spaceBetween,
                      children: [
                        Text(
                          'Flutter Developer Intern',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        const Text(
                          'Apr 2025 - May 2025',
                          style: TextStyle(color: kSecondaryTextColor, fontSize: 16),
                        )
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Froker (Remote)',
                      style: TextStyle(fontSize: 18, color: kPrimaryColor),
                    ),
                    const SizedBox(height: 24),
                    _buildExperiencePoint(context, 'Built a cross-platform safety application ensuring secure user access with OTP-based recovery.'),
                    const SizedBox(height: 12),
                    _buildExperiencePoint(context, 'Implemented core modules for issue reporting, inspection workflows, and daily progress monitoring.'),
                    const SizedBox(height: 12),
                    _buildExperiencePoint(context, 'Integrated dynamic charts and data visualizations to improve admin decision-making and insights.'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildExperiencePoint(BuildContext context, String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Icon(Icons.arrow_right, color: kPrimaryColor),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(height: 1.5, color: kSecondaryTextColor),
          ),
        ),
      ],
    );
  }
}