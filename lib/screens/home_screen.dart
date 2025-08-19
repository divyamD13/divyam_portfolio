import 'package:flutter/material.dart';
import 'package:divyam_portfolio/widgets/about_section.dart';
import 'package:divyam_portfolio/widgets/achievements_section.dart';
import 'package:divyam_portfolio/widgets/contact_section.dart';
import 'package:divyam_portfolio/widgets/experience_section.dart';
import 'package:divyam_portfolio/widgets/header_section.dart';
import 'package:divyam_portfolio/widgets/projects_section.dart';
import 'package:divyam_portfolio/widgets/skills_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: const Column(
                children: [
                  HeaderSection(),
                  AboutSection(),
                  SkillsSection(),
                  ProjectsSection(),
                  ExperienceSection(),
                  AchievementsSection(),
                  ContactSection(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}