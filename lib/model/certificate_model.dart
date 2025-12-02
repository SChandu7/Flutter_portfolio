class CertificateModel {
  final String name;
  final String organization;
  final String date;
  final String skills;
  final String credential;

  CertificateModel({
    required this.name,
    required this.organization,
    required this.date,
    required this.skills,
    required this.credential,
  });
}

List<CertificateModel> certificateList = [
  CertificateModel(
    name: 'Getting started with Flutter Development',
    organization: 'Coursera',
    date: 'AUG 2023',
    skills: 'Flutter . Dart',
    credential:
        'https://drive.google.com/file/d/1fAvt-4m5eu7MN-a2qRhCWuOv6agqm7Ef/view',
  ),
  CertificateModel(
    name: 'Android App Development',
    organization: 'Academor',
    date: 'JUL 2023',
    skills: 'Java . Xml . Android Development',
    credential:
        'https://drive.google.com/file/d/1czEz9lJ7cnam7CiWwCbRXhButvDuLKfb/view?usp=drivesdk',
  ),
  CertificateModel(
    name: 'Artificial Intelligence',
    organization: 'Academor',
    date: 'JUN 2023',
    skills: 'Ai Fundementals . Tools . Programming',
    credential:
        'https://drive.google.com/file/d/1EKyc4vWpbDDtmdQSjBPUydi69Y36Zb7r/view?usp=sharing',
  ),
  CertificateModel(
    name: 'Technology Development & Assessment',
    organization: 'University of Hyd',
    date: 'JAN 2025',
    skills: 'Techonoly . Industries\'s . Patents',
    credential:
        'https://drive.google.com/file/d/1fEuz2mcMf4QDPWOllj8cz8AZQMI2KGp5/view?usp=drivesdk',
  ),
  CertificateModel(
    name: 'Flutter Rest Movie App',
    organization: 'LinkedIn',
    date: 'JUL 2023',
    skills: 'Flutter . Rest Api\'  .Cloud',
    credential:
        'https://drive.google.com/file/d/1fKwjuq0MN0ANqZZEQ849w328uH3Jisno/view?usp=drivesdk',
  ),
  CertificateModel(
    name: 'OOps In Java',
    organization: 'Great Learning',
    date: 'JUL 2024',
    skills: 'Java . C++ . Programming . DSA',
    credential:
        'https://drive.google.com/file/d/1j1FfkY-kzrI2ljB-BNc9Cx7QtxuFDN2s/view?usp=sharing',
  ),
  CertificateModel(
    name: 'Ai-Quest',
    organization: 'KITS College,Gunutr',
    date: 'JUL 2025',
    skills: 'Ai . Flutter . ML',
    credential:
        'https://drive.google.com/file/d/1ViStKIz0CIl7frIcaRlQATveFhWw35y5/view?usp=sharing',
  ),
  CertificateModel(
    name: 'Hardware Internship',
    organization: 'RagaTech Source,Tirupati',
    date: 'Dec 2023',
    skills: 'Programming . Computer . Hardware',
    credential:
        'https://drive.google.com/file/d/1IeBGQp5rVPyXIzQiMKxTWdNQEqDp0Ibm/view?usp=sharing',
  ),
  CertificateModel(
    name: 'BectaGon-2K25',
    organization: 'Bapatla Eng College',
    date: 'Feb 2025',
    skills: 'Programming . Java . Python',
    credential:
        'https://drive.google.com/file/d/1a6FKG2BaYVHDtmzZyV_fI28BbKoNMbwu/view?usp=sharing',
  ),
  CertificateModel(
    name: 'Python Programming',
    organization: 'Open-Weaver',
    date: 'Mar 2024',
    skills: 'Programming . Python ',
    credential:
        'https://drive.google.com/file/d/1XR245HHMrVXU_IGmR1ra118NLCH8Tyei/view?usp=sharing',
  ),
  CertificateModel(
    name: 'JavaScript ',
    organization: 'Open-Weaver',
    date: 'Mar 2024',
    skills: 'Programming . Html . Javascript ',
    credential:
        'https://drive.google.com/file/d/1MsYo53SLEJ694rFIeCuhV4GrdNYwlPeN/view?usp=sharing',
  ),
  CertificateModel(
    name: 'Partial Coding',
    organization: 'AnuMahotsav-Anu',
    date: 'May 2025',
    skills: 'Programming . Java . Python ',
    credential:
        'https://drive.google.com/file/d/1XwrZgQvk-GyIVYM7WGIPHYJ0IrwCB5mP/view?usp=sharing',
  ),
  CertificateModel(
    name: 'Network Defense Essentials (NDE)',
    organization: 'EC-Council',
    date: 'JUL 2023',
    skills: 'Cyber Security . Networking ',
    credential:
        'https://drive.google.com/file/d/1fNMLM9O-0eGGuVnUr9z4qbYSVNic15_c/view?usp=drivesdk',
  ),
  CertificateModel(
    name: 'Drone-Fusion',
    organization: 'VRSEC-University,Vjwd',
    date: 'Apr 2025',
    skills: 'Electronics . Drone . Hardware ',
    credential:
        'https://drive.google.com/file/d/1-IXwh62NiF7Lxlkxh7ToV0WBxdKJrh-P/view?usp=sharing',
  ),
  CertificateModel(
    name: 'Codedale 24hr Hackathon',
    organization: 'Gitam University-Hyd',
    date: 'Jan 2025',
    skills: 'Ai . Flutter . Java',
    credential:
        'https://drive.google.com/file/d/1ALc9E-Pwjih85IYt8DApLK1zz_TqPe39/view?usp=sharing',
  ),
  CertificateModel(
    name: 'Hack-Orbital 24hr Hackathon',
    organization: 'IIST - Kerala',
    date: 'Oct 2025',
    skills: 'Agritech . Hardware . Software ',
    credential:
        'https://drive.google.com/file/d/1UIThv88YUmGDNjmstm4cW2P2KloJZwxY/view?usp=sharing',
  ),
  CertificateModel(
    name: 'Sunhacks 36hr Hackathon',
    organization: 'Sandip-University,Mumbai',
    date: 'Aug 2025',
    skills: 'Healthtech . Software ',
    credential:
        'https://drive.google.com/file/d/1MaXGBD_PP07wX7mTYTQbeRG-nMhA2JvR/view?usp=sharing',
  ),
  CertificateModel(
    name: 'Deviathon 48hr Hackathon',
    organization: 'Gla University,Delhi',
    date: 'Sep 2025',
    skills: 'IOt . Electronics . Networking ',
    credential:
        'https://drive.google.com/file/d/1FFGk1HmM4AOj6uwZY3tuRse94wv7ZATB/view?usp=sharing',
  ),
  CertificateModel(
    name: 'Bhartiya Antariksh Hackathon',
    organization: 'H2S / ISRO',
    date: 'Aug 2025',
    skills: 'Software . Networking . SpaceTech ',
    credential:
        'https://drive.google.com/file/d/1VkdsxVXJZsvxwpD-5ZXmdNaqQ8H_DCX4/view?usp=sharing',
  ),
  CertificateModel(
    name: 'NAsa Space Apps Challenge',
    organization: 'Nasa',
    date: 'Oct 2025',
    skills: 'SpaceTech . Networking . Software ',
    credential:
        'https://drive.google.com/file/d/1LdKzt0feTE8lU0reRxiuRrfJgXYt4U76/view?usp=sharing',
  ),
  CertificateModel(
    name: 'Competetive Programming Bootcamp',
    organization: 'GreeksForGreeks',
    date: 'Apr 2025',
    skills: 'Frameworks . Programming . Software ',
    credential:
        'https://drive.google.com/file/d/1z61Jjl_rH5NSESJmrcpetBa2VwbdzgnY/view?usp=sharing',
  ),
];
