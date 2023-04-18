import 'package:flutter/material.dart';
import 'package:lims/screen/loan_details.dart';
import 'package:lims/screen/edit_profile.dart';
import 'package:lims/screen/profile.dart';
import '../model/data.dart';

class Whislist extends StatefulWidget {
  const Whislist({super.key});

  @override
  State<Whislist> createState() => _WhislistState();
}

class _WhislistState extends State<Whislist> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Whislist'),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: List.generate(
              5,
              (index) => GestureDetector(
                onTap: () {
                  // Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ReturnDetails()));
                },
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: Row(
                        children: [
                          Container(
                            width: screenWidth * 0.3,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
                            child: Image.asset('assets/img/matahari.jpg'),
                          ),
                          Container(
                            height: 100,
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Matahari',
                                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                                ),
                                Text('Tere Liye'),
                                Text('Tahun Terbit: 2017'),
                                Text('ISBN : 01239103130'),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
