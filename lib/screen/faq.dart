import 'package:flutter/material.dart';

class Faq extends StatelessWidget {
  const Faq({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        title: const Text(
          'FAQ',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              ExpansionTile(
                childrenPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                expandedAlignment: Alignment.centerLeft,
                expandedCrossAxisAlignment: CrossAxisAlignment.start,
                title: Text('Question 1?'),
                children: [
                  Text(
                    'Lorem Ipsum',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              ExpansionTile(
                childrenPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                expandedAlignment: Alignment.centerLeft,
                expandedCrossAxisAlignment: CrossAxisAlignment.start,
                title: Text('Question 2?'),
                children: [
                  Text(
                    'Lorem Ipsum',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              ExpansionTile(
                childrenPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                expandedAlignment: Alignment.centerLeft,
                expandedCrossAxisAlignment: CrossAxisAlignment.start,
                title: Text('Question 3?'),
                children: [
                  Text(
                    'Lorem Ipsum',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
