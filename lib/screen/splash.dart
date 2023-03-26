import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/services.dart';
import 'package:lims/screen/profile-perpustakaan.dart';

enum _MenuValues { profil, pustakawan, faq }

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    List carouselItems = [
      'assets/img/carousel1.png',
      'assets/img/carousel2.png',
      'assets/img/carousel3.png',
    ];
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        toolbarHeight: 80,
        automaticallyImplyLeading: false,
        elevation: 0,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: PopupMenuButton<_MenuValues>(
              elevation: 2,
              icon: const Icon(
                Icons.more_vert_rounded,
                color: Colors.black,
              ),
              color: Colors.white,
              itemBuilder: (context) => [
                const PopupMenuItem(
                  value: _MenuValues.profil,
                  child: Text('Profil Perpustakaan',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      )),
                ),
                const PopupMenuItem(
                  value: _MenuValues.pustakawan,
                  child: Text('Pustakawan',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      )),
                ),
                const PopupMenuItem(
                  value: _MenuValues.faq,
                  child: Text('FAQ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      )),
                ),
              ],
              onSelected: (value) {
                switch (value) {
                  case _MenuValues.profil:
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ProfilePerpustakaan()));
                    break;
                  case _MenuValues.pustakawan:
                    // Navigator.of(context).push(MaterialPageRoute(builder: (context) => const AddMeasurement()));
                    break;
                  case _MenuValues.faq:
                    // Navigator.of(context).push(MaterialPageRoute(builder: (context) => const AddMeasurement()));
                    break;
                }
              },
            ),
          )
        ],
        title: Row(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Image.asset(
                'assets/img/logo.png',
                width: 30,
                height: 30,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Library Management Systems',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'NPP: 3577021B1000001',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  height: screenHeight * 0.25,
                ),
                items: [carouselItems[0], carouselItems[1], carouselItems[2]].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        width: screenWidth,
                        height: screenHeight * 0.15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        clipBehavior: Clip.antiAlias,
                        child: Image.asset('$i'),
                      );
                    },
                  );
                }).toList(),
                carouselController: CarouselController(),
              ),
              Container(
                width: screenWidth,
                margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                child: const Text(
                  'Berita Terkini',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.start,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  3,
                  (index) {
                    return Column(
                      children: [
                        Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                          ),
                          clipBehavior: Clip.antiAlias,
                          child: Image.asset(
                            carouselItems[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 5),
                          width: screenWidth / 4,
                          child: Text(
                            'Lorem Ipsum Dolor',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ),
                        Container(
                          // margin: const EdgeInsets.symmetric(vertical: 5),
                          width: screenWidth / 4,
                          child: Text(
                            '15 Mar 2023',
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              Container(
                width: screenWidth,
                margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                child: const Text(
                  'Papan Peringkat',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.start,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    width: 100,
                    height: 140,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Theme.of(context).primaryColor.withOpacity(.85),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        badges.Badge(
                          badgeStyle: badges.BadgeStyle(
                            badgeColor: Theme.of(context).canvasColor.withOpacity(.0),
                          ),
                          position: badges.BadgePosition.topEnd(top: 0, end: -50),
                          badgeContent: Icon(
                            Icons.workspace_premium_rounded,
                            color: Colors.white70,
                          ),
                          child: Text(
                            '',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 5),
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(color: Colors.amber, borderRadius: BorderRadius.circular(30)),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 3),
                          child: Text(
                            'Fuad Wibowo',
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 2),
                          padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 6),
                          decoration: BoxDecoration(
                            color: Colors.blue.withOpacity(.7),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            '345 pts',
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 4),
                          child: Text(
                            'Level 21',
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 150,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Theme.of(context).primaryColor,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        badges.Badge(
                          badgeStyle: badges.BadgeStyle(
                            badgeColor: Theme.of(context).canvasColor.withOpacity(.0),
                          ),
                          position: badges.BadgePosition.topEnd(top: 0, end: -50),
                          badgeContent: Icon(
                            Icons.workspace_premium_rounded,
                            color: Colors.amberAccent,
                          ),
                          child: Text(
                            '',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 7),
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(color: Colors.amber, borderRadius: BorderRadius.circular(30)),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 3),
                          child: Text(
                            'Rizky Joanditya',
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 2),
                          padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 6),
                          decoration: BoxDecoration(
                            color: Colors.blue.withOpacity(.7),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            '345 pts',
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 4),
                          child: Text(
                            'Level 21',
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 130,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Theme.of(context).primaryColor.withOpacity(.7),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        badges.Badge(
                          badgeStyle: badges.BadgeStyle(
                            badgeColor: Theme.of(context).canvasColor.withOpacity(.0),
                          ),
                          position: badges.BadgePosition.topEnd(top: 0, end: -50),
                          badgeContent: Icon(
                            Icons.workspace_premium_rounded,
                            color: Colors.brown.shade400,
                          ),
                          child: Text(
                            '',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(color: Colors.amber, borderRadius: BorderRadius.circular(30)),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 3),
                          child: Text(
                            'Dhiya Zakkiyah',
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 2),
                          padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 6),
                          decoration: BoxDecoration(
                            color: Colors.blue.withOpacity(.7),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            '345 pts',
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 4),
                          child: Text(
                            'Level 21',
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: DataTable(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    boxShadow: const <BoxShadow>[],
                  ),
                  headingRowColor: MaterialStateColor.resolveWith(
                    (states) {
                      return Theme.of(context).primaryColor;
                    },
                  ),
                  headingTextStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                  columns: <DataColumn>[
                    DataColumn(
                      label: Expanded(
                        child: Text('#'),
                      ),
                    ),
                    DataColumn(
                      label: Expanded(
                        child: Text('Nama'),
                      ),
                    ),
                    DataColumn(
                      label: Expanded(
                        child: Text('Poin'),
                      ),
                    ),
                    DataColumn(
                      label: Expanded(
                        child: Text('Level'),
                      ),
                    ),
                  ],
                  rows: <DataRow>[
                    DataRow(
                      cells: <DataCell>[
                        DataCell(InkWell(onTap: () {}, child: Text('#4'))),
                        DataCell(Text('Rudy Hantoro')),
                        DataCell(Text('185')),
                        DataCell(Text('18')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(InkWell(onTap: () {}, child: Text('#5'))),
                        DataCell(Text('Ridho Fata')),
                        DataCell(Text('156')),
                        DataCell(Text('18')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(InkWell(onTap: () {}, child: Text('#6'))),
                        DataCell(Text('Atthariq')),
                        DataCell(Text('135')),
                        DataCell(Text('18')),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(side: BorderSide(color: Colors.black), borderRadius: BorderRadius.circular(24)),
                    padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 80),
                  ),
                  child: const Text(
                    'Masuk sebagai Pustakawan',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 89),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(24)),
                      )),
                  child: const Text(
                    'Masuk sebagai Anggota',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                width: screenWidth * 0.5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.facebook_rounded,
                      color: Colors.blue,
                    ),
                    Icon(
                      Icons.smart_display_rounded,
                      color: Colors.red,
                    ),
                    Icon(
                      Icons.g_mobiledata_rounded,
                      color: Colors.green,
                      size: 40,
                    ),
                    Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.pink,
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                width: screenWidth * 0.8,
                child: Text(
                  'Total Koleksi Perpustakaan 12.999 Masuk dan Telusuri Sekarang!',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                width: screenWidth * 0.8,
                child: Text(
                  '© 2023',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
