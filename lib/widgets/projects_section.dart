import 'package:divyam_portfolio/services/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:divyam_portfolio/utils/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 80.0),
      color: kSurfaceColor,
      child: Column(
        children: [
          Text(
            'Projects',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 40),
          const Wrap(
            spacing: 40,
            runSpacing: 40,
            alignment: WrapAlignment.center,
            children: [
              ProjectCard(
                title: 'Note Nexus',
                description: 'Note Nexus is a comprehensive college resource application designed to provide students with streamlined access to academic materials like notes and past question papers. It offers a seamless cross-platform experience with real-time data synchronization, ensuring that the latest content is always available. The application also features a secure authentication system, allowing authorized content managers to easily upload and organize academic resources for the entire student community.',
                techStack: ['Dart', 'Flutter', 'Firebase', 'ImageKit'],
                githubUrl: 'https://github.com/divyamD13/note-nexus',
              ),
              ProjectCard(
                title: 'DocuSync',
                description: 'DocuSync is a modern, cross-platform document editor engineered for real-time collaboration. This full-featured application allows multiple users to edit a single document simultaneously, with changes reflected instantly for all participants. The platform is designed to handle live communication efficiently, ensuring a smooth and responsive editing experience. To ensure user-friendliness, it integrates a simple sign-in process for easy onboarding and supports a rich text formatting toolkit, enhancing team productivity and collaborative writing.',
                techStack: ['Flutter', 'Node.js', 'Express.js','MongoDB', 'Socket.IO'],
                githubUrl: 'https://github.com/divyamD13/docu_sync',
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final List<String> techStack;
  final String githubUrl;

  const ProjectCard({
    super.key,
    required this.title,
    required this.description,
    required this.techStack,
    required this.githubUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 10,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(width: 8),
              if (githubUrl.isNotEmpty)
                IconButton(
                  icon: const FaIcon(FontAwesomeIcons.github, size: 20, color: kPrimaryColor),
                  onPressed: () => UrlLauncherService.launchUrl(githubUrl),
                  tooltip: 'GitHub Repository',
                ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            description,
            style: const TextStyle(height: 1.5, color: kSecondaryTextColor),
          ),
          const SizedBox(height: 24),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: techStack
                .map((tech) => Chip(
                      label: Text(tech),
                      backgroundColor: kPrimaryColor.withOpacity(0.2),
                      labelStyle: const TextStyle(color: kPrimaryColor),
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}