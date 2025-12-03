// class Project {
//   final String name;
//   final String description;
//   final String image;
//   final String link;
//   Project(this.name, this.description, this.image, this.link);
// }

class Project {
  final String name;
  final String description;
  final String image; // can be asset or URL
  final String link;

  Project(this.name, this.description, this.image, this.link);

  bool get isNetworkImage => image.startsWith("http") || image.startsWith("https");
}


List<Project> projectList = [
  Project(
    'SportsForChange',
    'Sports for Change is a platform that organizes and tracks school sports events, helping students, coaches, and organizers manage games, results, and performance efficiently . The Project is Taken Under SportsForChange By HCL Company,Vijayawada',
    'https://djangotestcase.s3.ap-south-1.amazonaws.com/portfolio/projects/sfcproject.png',
    'https://github.com/SChandu7/SportsForChange.git',
  ),
  Project(
    'AgriNutriTrack',
    'AgriNutriTrack is an app where each vegetable or crop has a QR code showing quality, nutrient info, and freshness, while farmers can create produce cards for transparency.',
    'https://djangotestcase.s3.ap-south-1.amazonaws.com/portfolio/projects/agriproject.png',
    'https://github.com/SChandu7/Voice-Assistant-AI.git',
  ),
  Project(
    'EasyVoice Assist',
    "A smart real-time voice chatbot built with Flutter and Perplexity API. It listens to your voice, understands your query, and responds instantly in a natural female voice — all within a sleek, modern chat interface.",
    'https://djangotestcase.s3.ap-south-1.amazonaws.com/portfolio/projects/voiceproject.png',
    'https://github.com/SChandu7/SportsForChange.git',
  ),
  Project(
    'Kisan Konect',
    "Kisan Konnect is a digital platform that connects farmers directly with consumers, enabling fair pricing, easy crop sales, and transparent transactions without middlemen.",
    'https://djangotestcase.s3.ap-south-1.amazonaws.com/portfolio/projects/kisanproject.png',
    'https://github.com/SChandu7/KisanKonnect',
  ),
  Project(
    'Shopify-Store-Clothes',
    "A modern Shopify-based e-commerce clothing store offering a seamless shopping experience with product listings, smart cart, secure checkout, and real-time order tracking.",
    'https://djangotestcase.s3.ap-south-1.amazonaws.com/portfolio/projects/shopifyproject.png',
    'https://github.com/SChandu7/ecommerce-shopify-store',
  ),
  Project(
    'Aqua Clear-Drop',
    "Arduino Turbidity Tester measures water clarity using a sensor and Esp32, showing real-time results on an app to check water quality easily and accurately.",
    'https://djangotestcase.s3.ap-south-1.amazonaws.com/portfolio/projects/aquaproject.png',
    'https://github.com/SChandu7/Aqua-Clear-Drop',
  ),
  Project(
    'HealthTech',
    "HealthTech is a secure digital platform using QR codes for fast, paperless access and sharing of patient medical records between doctors and patients",
    'https://djangotestcase.s3.ap-south-1.amazonaws.com/portfolio/projects/healthproject.png',
    'https://github.com/SChandu7/HealthTech',
  ),
  Project(
    'DigitalSignatureApp',
    "A Digital Signature Application Can Place the signature in the Marksheets,Pdfs,Images,Etc...",
    'https://djangotestcase.s3.ap-south-1.amazonaws.com/portfolio/projects/digitalproject.png',
    'https://github.com/SChandu7/DigitalSignatureApp',
  ),
  Project(
    'AI SMart Centre',
    "AI Smart Centre is an intelligent learning hub that combines AI-powered course recommendations, a chatbot assistant, tech news, project collaboration, and live study features — helping students learn, connect, and grow together on one smart platform.",
    'https://djangotestcase.s3.ap-south-1.amazonaws.com/portfolio/projects/smartproject.png',
    'https://github.com/SChandu7/Ai-Smart-Centre',
  ),
  Project(
    'Drone Landmine Detection',
    "Landmine Detection using Drone Camera is an AI-powered drone project designed to enhance safety in mine-affected areas. The system uses a drone equipped with a camera and computer vision algorithms to detect landmines in real-time, allowing operators to safely monitor and avoid hazardous zones.",
    'https://djangotestcase.s3.ap-south-1.amazonaws.com/portfolio/projects/landmineproject.png',
    'https://github.com/SChandu7/DronelandmineDetection',
  ),
  Project(
    'Car Controller Application UI',
    'Car Control Dashboard is a user-friendly mobile application built using Flutter and powered by GetX for efficient state management. Enjoy a modern and intuitive design that adapts to various screen sizes, Interact with dynamic car controls, including speed, steering, and temperature. Realistic animations enhance the visual appeal, making it feel like you are controlling a real car!',
    'https://djangotestcase.s3.ap-south-1.amazonaws.com/portfolio/projects/car.png',
    'https://github.com/SChandu7/Car-Controller-getX-Flutter.git',
  ),
  Project(
      'Neumorphic Clockify',
      'Neumorphic TimeKit is an open-source project that brings together the elegance of a beautifully designed alarm system, an analog clock with a neumorphic touch, and a feature-rich stopwatch. Whether you\'re looking for a functional alarm tool, a stylish desktop clock, or a precise stopwatch, TimeKit has you covered.',
      'https://djangotestcase.s3.ap-south-1.amazonaws.com/portfolio/projects/alarm.jpg',
      'https://github.com/SChandu7/Clock-App.git'),
  Project(
      'Flutter Music Streaming Application',
      'A Flutter music streaming application that allows users to play audio files from local storage. The app features a beautiful neumorphic UI design and provides a smooth user experience for browsing and playing music.',
      'https://djangotestcase.s3.ap-south-1.amazonaws.com/portfolio/projects/player.png',
      'https://github.com/SChandu7/Music-Player-App.git'),
  
  Project(
      'Task Sync Pro',
      'Welcome to the Beautiful Task Scheduler App repository! This Flutter-based task management application combines elegant design with a robust backend, ensuring a seamless and organized task management experience. From stunning UI to real-time synchronization, this app has you covered.',
      'https://djangotestcase.s3.ap-south-1.amazonaws.com/portfolio/projects/task.png',
      'https://github.com/Schandu7/'),
  
  Project(
      'Doctor Appointment Application',
      'Introducing the extraordinary "Doctor Appointment System" - a state-of-the-art Flutter UI application that redefines healthcare accessibility and efficiency. Seamlessly crafted, this app empowers users to effortlessly select doctors based on categories, engage in smooth messaging, and access detailed profiles.',
      'https://djangotestcase.s3.ap-south-1.amazonaws.com/portfolio/projects/doctor.png',
      'https://github.com/SChandu7/Appointment-Doctor-App.git'),
  Project(
    'Medical Prescription App',
    "A smart medical information system built to provide disease details, care instructions, and prescription guidance based on user input.",
    'https://djangotestcase.s3.ap-south-1.amazonaws.com/portfolio/projects/medicalproject.png',
    'https://github.com/SChandu7/Medical-Prescription',
  ),
  Project(
    'Assign-Sync',
    "Assignmwnts Application Tracking records by user doing tasks given by the faculty will be monitored",
    'https://djangotestcase.s3.ap-south-1.amazonaws.com/portfolio/projects/assignproject.png',
    'https://github.com/SChandu7/Assign-Sync',
  ),
];
