import 'package:flutter/material.dart';
import 'package:lims/screen/edit_profile.dart';
import 'package:lims/screen/loan_details.dart';
import 'package:lims/screen/return_details.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding: const EdgeInsets.symmetric(vertical: 15),
                width: screenWidth,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(.2),
                        blurRadius: 5,
                        offset: Offset(0, 5),
                      )
                    ]),
                child: Column(
                  children: [
                    Container(
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.amber,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 15),
                      child: Text(
                        'Fuad Wahyu Wibowo',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      // margin: const EdgeInsets.symmetric(vertical: 5),
                      child: Text(
                        'Member Since 2023',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                          backgroundColor: Theme.of(context).focusColor,
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const EditProfil()));
                        },
                        child: Text(
                          'Edit Profile',
                          style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
                        )),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      width: screenWidth * .8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Row(
                              children: [
                                Icon(
                                  Icons.archive_rounded,
                                  color: Theme.of(context).primaryColor,
                                ),
                                Text(
                                  'Buku Terpinjam',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                )
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Row(
                              children: [
                                Icon(
                                  Icons.logout,
                                  color: Colors.red,
                                ),
                                Text(
                                  'Sign Out',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.red,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: List.generate(
                  2,
                  (index) => GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ReturnDetails()));
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
