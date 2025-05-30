import 'package:flutter/material.dart';

import 'knowledge.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'Knowledge',
            style: TextStyle(color: Colors.white),
          ),
        ),
        KnowledgeText(knowledge: 'Frontend Frameworks'),
        KnowledgeText(knowledge: 'Backend Maintaniace'),
        KnowledgeText(knowledge: 'Database Handling'),
        KnowledgeText(knowledge: 'Apps/Web Server Deploy'),
        KnowledgeText(knowledge: 'Computer Concepts(CN,OS,ARC)'),
        KnowledgeText(knowledge: 'Git, Github'),
      ],
    );
  }
}
