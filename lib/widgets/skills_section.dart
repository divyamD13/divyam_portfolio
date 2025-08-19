import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:divyam_portfolio/utils/constants.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 80.0),
      child: Column(
        children: [
          Text(
            'Skills',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 40),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 900),
            child: const Wrap(
              spacing: 40,
              runSpacing: 40,
              alignment: WrapAlignment.center,
              children: [
                SkillCategory(
                  title: 'Languages',
                  skills: ['C', 'C++', 'Dart', 'Java', 'JavaScript'],
                ),
                SkillCategory(
                  title: 'Frameworks',
                  skills: ['Flutter', 'Node.js', 'Express.js', 'Git', 'GitHub', 'Android Studio'],
                ),
                SkillCategory(
                  title: 'Developer Tools',
                  skills: [ 'Git', 'GitHub', 'Android Studio', 'Visual Studio Code', 'Postman', 'Figma','REST API'],
                ),
                SkillCategory(
                  title: 'Databases',
                  skills: ['Firebase', 'MongoDB', 'MySQL'],
                ),
                 SkillCategory(
                  title: 'CourseWork',
                  skills: ['DataStructures & Algorithms', 'Object Oriented Programming', 'Database Management Systems', 'Operating System', 'Computer Networks'],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SkillCategory extends StatelessWidget {
  final String title;
  final List<String> skills;

  const SkillCategory({super.key, required this.title, required this.skills});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: kSurfaceColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(color: kPrimaryColor),
          ),
          const SizedBox(height: 24),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: skills.map((skill) => Chip(label: Text(skill))).toList(),
          ),
        ],
      ),
    );
  }
}