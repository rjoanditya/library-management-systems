import 'package:flutter/material.dart';

class LatestNews extends StatelessWidget {
  const LatestNews({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(
          'Latest News',
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Image.asset(
                  'assets/img/carousel1.png',
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  'Berkarir di Bidang Pertanian',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ornare hendrerit nunc, a ornare neque condimentum vitae. Curabitur sagittis justo elit, nec fermentum ipsum venenatis tempor.',
                  textAlign: TextAlign.justify,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
