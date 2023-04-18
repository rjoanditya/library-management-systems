import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Pustakawan extends StatelessWidget {
  const Pustakawan({super.key});
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(
          'Pustakawan',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Wrap(
            alignment: WrapAlignment.start,
            runAlignment: WrapAlignment.center,
            children: List.generate(12, (index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                width: screenWidth * 0.26,
                child: Column(children: [
                  Container(
                    width: 75,
                    height: 75,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  Container(
                    child: Text(
                      'Rizky Joanditya',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    child: Text('Head Office'),
                  ),
                ]),
              );
            })),
      )),
    );
  }
}
