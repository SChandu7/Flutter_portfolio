import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final gradient = const LinearGradient(
      colors: [Color(0xFFFF007C), Color(0xFF007BFF)],
    );

    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
        color: const Color(0xFF05061A),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Title
            ShaderMask(
              shaderCallback: (bounds) => gradient.createShader(bounds),
              child: const Text(
                "About Me",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 30),

            // 1. Personal Introduction
            Text(
              "I'm S Chandra Sekhar, a passionate Full Stack & Flutter Developer dedicated to building powerful, scalable digital products. I love crafting experiences that merge design, performance, and innovation.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[300],
                height: 1.6,
              ),
            ),
            const SizedBox(height: 40),

            // 4. Education
            sectionTitle("Education", gradient),
            const SizedBox(height: 10),
            const Text(
              "B.Tech in Artificial Intelligence & Machine Learning\n Acharya Nagarjuna University (2023 - Present)\nRelevant Courses: AI, ML, Software Engineering, Data Science.",
              textAlign: TextAlign.center,
              style:
                  TextStyle(fontSize: 16, color: Colors.white70, height: 1.6),
            ),
            const SizedBox(height: 40),

            // 2. Technical Skills
            sectionTitle("Technical Skills", gradient),
            const SizedBox(height: 10),
            const Wrap(
              spacing: 12,
              runSpacing: 12,
              alignment: WrapAlignment.center,
              children: const [
                SkillChip(title: "C,C++"),
                SkillChip(title: "Java J2EE"),
                SkillChip(title: "Python"),
                SkillChip(title: "Dart"),
                SkillChip(title: "Flutter"),
                SkillChip(title: "Django"),
                SkillChip(title: "MySql"),
                SkillChip(title: "AWS"),
                SkillChip(title: "Html/Css"),
                SkillChip(title: "JavaScript"),
                SkillChip(title: "MongoDb"),
                SkillChip(title: "Node.js"),
                SkillChip(title: "Ai/TensorFlow"),
                SkillChip(title: "ML/OpenCv"),
                SkillChip(title: "Iot/Sensors"),
                SkillChip(title: "Drone Prog"),
              ],
            ),

            const SizedBox(height: 40),

            // 3. Professional Journey
            sectionTitle("Professional Journey", gradient),
            const SizedBox(height: 10),

// Full professional journey in neat rectangular format with arrows
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...[
                  "Oct 2025 - 24Hrs Hackathon @ IIST Kerala",
                  "Oct 2025 - Participated in 48Hrs Deviathon Hackathon @ GLA University, Mathura",
                  "Sep 2025 - Sunhacks International Hackathon @ Sandip University (Asia Book of Records)",
                  "Aug 2025 - Showcasing The Startup Idea To Krishna Ditrict Collector at Collector office,Vijayawada "
                      "Aug 2025 - Collaborated with startup 'Kisan-Konect' and developed Application",
                  "Jul 2025 - Developed AI-based autonomous agricultural drone",
                  "Jun 2025 - IoT project: Water quality monitoring",
                  "Jun 2025 - Completed full-stack Digital Signature Application",
                  "Jun 2025 - Developed end-to-end assignment tracking app (Flutter + Django + AWS)",
                  "May 2025 - Internship as Software Trainee @ ConnectEk Solutions Pvt Ltd",
                  "Apr 2025 - Freelance project: Sports data management",
                  "Feb 2025 - DroneFusion & Amaravati Drone Hackathon (PetDrone project)",
                  "Feb 2025 - Roundtable Conference on Drone Ecosystem Development @ Novotel, Vijayawada",
                  "Jan 2024 - Code-Dale Hackathon @ Gitam University, Hyderabad",
                  "Jan 2024 - DST Technology Development & Assessment Event @ University of Hyderabad",
                  "Dec 2024 - First Flutter freelance project",
                  "Nov 2024 - Started freelancing with Android app development",
                  "May 2024 - 6-month computer hardware internship @ Schneider Electric, Hyderabad",
                  "Apr 2023 - Started learning J2EE (Servlets, JDBC, JMS, Spring Boot)",
                  "Feb 2023 - Completed DSA in Java (700+ hrs)",
                  "Sep 2022 - Developed C++ project 'Random Number Generator & Selection Process'",
                  "Aug 2022 - Passed C Programming (72/80)",
                  "Apr 2022 - Started learning programming in C",
                  "Mar 2022 - Failed C Programming subject",
                  "Jul 2021 - Started Diploma in CSE @ Chebrolu Engineering College",
                ]
                    .map((item) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 6.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Arrow icon
                              const Icon(Icons.arrow_right,
                                  color: Colors.white70, size: 20),
                              const SizedBox(width: 6),
                              // Item text
                              Expanded(
                                child: Text(
                                  item,
                                  style: const TextStyle(
                                      color: Colors.white70,
                                      fontSize: 16,
                                      height: 1.4),
                                ),
                              ),
                            ],
                          ),
                        ))
                    .toList(),
              ],
            ),

            const SizedBox(height: 40),

            // 6. Freelance Philosophy
            sectionTitle("Freelance & Work Philosophy", gradient),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "I believe in building fearlessly and learning endlessly. Open for freelance collaborations and love helping startups turn bold ideas into real digital products.",
                textAlign: TextAlign.center,
                style:
                    TextStyle(fontSize: 16, color: Colors.white70, height: 1.6),
              ),
            ),
            const SizedBox(height: 40),

            // 7. Personal Touch
            sectionTitle("Outside of Code", gradient),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "When I’m not coding, I explore AI-powered drones, design creative user experiences, and experiment with futuristic technologies.",
                textAlign: TextAlign.center,
                style:
                    TextStyle(fontSize: 16, color: Colors.white70, height: 1.6),
              ),
            ),

            const SizedBox(height: 40),

            // 8. Stats

            // 9. Quote
            ShaderMask(
              shaderCallback: (bounds) => gradient.createShader(bounds),
              child: const Text(
                "\"Build fearlessly. Learn endlessly.\"",
                style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 40),

            // 10. Contact
            sectionTitle("Let's Collaborate 🚀", gradient),
            const SizedBox(height: 10),
            const Text(
              "Open for freelance projects and collaborations.\nReach me at: chandrasekhar@example.com",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.white70),
            ),
            const SizedBox(height: 20),
            Wrap(
              spacing: 20,
              children: const [
                SocialIcon(icon: FontAwesomeIcons.github),
                SocialIcon(icon: FontAwesomeIcons.linkedin),
                SocialIcon(icon: FontAwesomeIcons.twitter),
                SocialIcon(icon: FontAwesomeIcons.whatsapp),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget sectionTitle(String title, LinearGradient gradient) {
    return ShaderMask(
      shaderCallback: (bounds) => gradient.createShader(bounds),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}

// Reusable Components
class SkillChip extends StatelessWidget {
  final String title;
  const SkillChip({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFFFF007C), Color(0xFF007BFF)],
        ),
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.2),
            blurRadius: 10,
            spreadRadius: 2,
          )
        ],
      ),
      child: Text(
        title,
        style:
            const TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
      ),
    );
  }
}

class InfoCardList extends StatelessWidget {
  final List<String> items;
  const InfoCardList({required this.items, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map(
            (e) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Text(
                "• $e",
                style: const TextStyle(color: Colors.white70, fontSize: 16),
              ),
            ),
          )
          .toList(),
    );
  }
}

class StatBox extends StatelessWidget {
  final String title;
  final String subtitle;
  const StatBox({required this.title, required this.subtitle, super.key});

  @override
  Widget build(BuildContext context) {
    final gradient = const LinearGradient(
      colors: [Color(0xFFFF007C), Color(0xFF007BFF)],
    );
    return Container(
      width: 160,
      height: 120,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color(0xFF101223),
            Colors.blueAccent.withOpacity(0.1),
          ],
        ),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.blueAccent.withOpacity(0.2)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ShaderMask(
            shaderCallback: (bounds) => gradient.createShader(bounds),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            subtitle,
            style: const TextStyle(color: Colors.white70, fontSize: 14),
          ),
        ],
      ),
    );
  }
}

class SocialIcon extends StatelessWidget {
  final IconData icon;
  const SocialIcon({required this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFFFF007C), Color(0xFF007BFF)],
        ),
        shape: BoxShape.circle,
      ),
      child: Icon(icon, color: Colors.white, size: 24),
    );
  }
}
