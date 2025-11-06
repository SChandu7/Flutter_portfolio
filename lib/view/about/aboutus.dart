import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view%20model/responsive.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    const gradient = LinearGradient(
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
              "Experienced Full-Stack developer With a Proven track record of delivering high-performance, scalable Applications. Skilled in leveraging modern technologies such as Flutter ,Django, PostgreSql, Aws to build robust and user friendly solutions.",
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
              "B.Tech in Ai\Ml\n Acharya Nagarjuna University (2024-2027).",
              textAlign: TextAlign.center,
              style:
                  TextStyle(fontSize: 15, color: Colors.white70, height: 1.6),
            ),
            const Text(
              "B.Tech in CSE \n Rvit College,Chebrolu (2021 - 2024).",
              textAlign: TextAlign.center,
              style:
                  TextStyle(fontSize: 16, color: Colors.white70, height: 1.6),
            ),
            const SizedBox(height: 40),

            // 2. Technical Skills
            sectionTitle("Technical Skills", gradient),
            const SizedBox(height: 10),

            LayoutBuilder(
              builder: (context, constraints) {
                double width = constraints.maxWidth;
                double chipWidth;
                bool isMobile = width < 600;

                // ✅ Responsive width logic
                if (width > 900) {
                  chipWidth = (width / 3) - 40; // ~3 per row on desktop
                } else if (width > 600) {
                  chipWidth = (width / 2) - 30; // ~2 per row on tablet
                } else {
                  chipWidth = width - 40; // ~1 per row on mobile
                }

                return Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  alignment: WrapAlignment.center,
                  children: const [
                    SkillChip(title: "C, C++"),
                    SkillChip(title: "Java J2EE"),
                    SkillChip(title: "Python"),
                    SkillChip(title: "Dart"),
                    SkillChip(title: "Flutter"),
                    SkillChip(title: "Django"),
                    SkillChip(title: "MySql"),
                    SkillChip(title: "AWS"),
                    SkillChip(title: "HTML / CSS"),
                    SkillChip(title: "JavaScript"),
                    SkillChip(title: "MongoDB"),
                    SkillChip(title: "Node.js"),
                    SkillChip(title: "TensorFlow"),
                    SkillChip(title: "OpenCV"),
                    SkillChip(title: "IoT/Sensors"),
                    SkillChip(title: "Drone Prog"),
                  ].map((chip) {
                    return SizedBox(
                        width: isMobile ? chipWidth / 2.3 : chipWidth / 1.5,
                        child: chip);
                  }).toList(),
                );
              },
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
                  "Sep 2025 - 36Hrs  Sunhacks International Hackathon @ Sandip University (Asia Book of Records)",
                  "Aug 2025 - Showcasing The Startup Idea To Krishna Ditrict Collector at Collector office,Vijayawada ",
                  "Aug 2025 - Collaborated with startup 'Kisan-Konect' and developed Application",
                  "Jun 2025 - Did an IoT project: Water quality monitoring Through Application",
                  "Jun 2025 - Developed end-to-end assignment tracking app (Flutter + Django + AWS)",
                  "May 2025 - Done Internship as Software Trainee @ ConnectEk Solutions Pvt Ltd",
                  "Apr 2025 - Freelance project: Sports data management",
                  "Feb 2025 - Participated DroneFusion & Amaravati Drone Hackathon (PetDrone project)",
                  "Feb 2025 - Attended Roundtable Conference on Drone Ecosystem Development @ Novotel, Vijayawada",
                  "Jan 2024 - Participated Code-Dale Hackathon @ Gitam University, Hyderabad",
                  "Jan 2024 - Attended DST Technology Development & Assessment Event @ University of Hyderabad",
                  "May 2024 - Did an 6-month computer hardware internship @ Schneider Electric, Hyderabad",
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
            sectionTitle("Work Philosophy", gradient),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "I Believe in building fearlessly and learning endlessly. Open for freelance collaborations and love helping startups turn bold ideas into real digital products.",
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
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 40),

            // 10. Contact
            sectionTitle("Let's Collaborate 🚀", gradient),
            const SizedBox(height: 10),
            Text(
              "Open for freelance projects,  ${Responsive.isLargeMobile(context) ? '\n' : ''} Collaboration And Hiring.\nReach me at  dev@chandus7.in",
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 15, color: Colors.white70),
            ),
            const SizedBox(height: 20),
            const Wrap(
              spacing: 20,
              children: const [
                SocialIcon(
                  icon: FontAwesomeIcons.github,
                  url: 'https://github.com/SChandu7',
                ),
                SocialIcon(
                  icon: FontAwesomeIcons.linkedin,
                  url: 'https://linkedin.com/in/chandus7',
                ),
                SocialIcon(
                  icon: FontAwesomeIcons.twitter,
                  url: 'https://x.com/Chandu18499814',
                ),
                SocialIcon(
                  icon: FontAwesomeIcons.whatsapp,
                  url:
                      'https://wa.me/919949597079', // e.g. https://wa.me/919876543210
                ),
              ],
            )
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
        textAlign: TextAlign.center,
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
    const gradient = const LinearGradient(
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
  final String url; // Add URL or any action
  const SocialIcon({required this.icon, required this.url, super.key});

  Future<void> _launchURL() async {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _launchURL, // Each icon clickable
      borderRadius: BorderRadius.circular(50),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFFF007C), Color(0xFF007BFF)],
          ),
          shape: BoxShape.circle,
        ),
        child: Icon(icon, color: Colors.white, size: 24),
      ),
    );
  }
}
