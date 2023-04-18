import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lims/screen/loan_details.dart';
import 'package:lims/screen/edit_profile.dart';
import 'package:lims/screen/profile.dart';
import 'package:lims/screen/search_input.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController search = TextEditingController();
  final _formSearchKey = GlobalKey<FormState>();
  bool isPortrait = false;
  void initState() {}
  @override
  Widget build(BuildContext context) {
    isPortrait ? SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]) : SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    List kategoriIcon = [
      Icon(
        Icons.room,
        color: Theme.of(context).focusColor,
      ),
      Icon(
        Icons.masks_rounded,
        color: Theme.of(context).focusColor,
      ),
      Icon(
        Icons.king_bed,
        color: Theme.of(context).focusColor,
      ),
      Icon(
        Icons.heart_broken,
        color: Theme.of(context).focusColor,
      ),
      Icon(
        Icons.holiday_village,
        color: Theme.of(context).focusColor,
      ),
      Icon(
        Icons.earbuds_rounded,
        color: Theme.of(context).focusColor,
      ),
      Icon(
        Icons.assignment_ind_sharp,
        color: Theme.of(context).focusColor,
      ),
      Icon(
        Icons.cast_for_education_rounded,
        color: Theme.of(context).focusColor,
      ),
      Icon(
        Icons.compost_rounded,
        color: Theme.of(context).focusColor,
      ),
      Icon(
        Icons.skateboarding,
        color: Theme.of(context).focusColor,
      ),
      Icon(
        Icons.whatshot_outlined,
        color: Theme.of(context).focusColor,
      ),
    ];
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        toolbarHeight: 0,
        backgroundColor: Theme.of(context).focusColor,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 230,
                    width: screenWidth,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(24),
                        bottomRight: Radius.circular(24),
                      ),
                      color: Theme.of(context).focusColor,
                    ),
                  ),
                  SingleChildScrollView(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 55,
                          width: screenWidth,
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Profile())),
                                child: Container(
                                  width: screenWidth * 0.15,
                                  height: screenWidth * 0.15,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.white.withOpacity(.9),
                                  ),
                                  child: Icon(
                                    Icons.person,
                                    size: 30,
                                    color: Colors.grey[600],
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.only(left: 20),
                                width: screenWidth * 0.725,
                                height: 60,
                                // color: Colors.red,
                                child: TextFormField(
                                  controller: search,
                                  onTap: () => Navigator.of(context).push(
                                    MaterialPageRoute(builder: (BuildContext context) {
                                      return const SearchInput(); // return const Index();
                                    }),
                                  ),
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30), borderSide: BorderSide.none),
                                      label: const Text('Search'),
                                      fillColor: Theme.of(context).scaffoldBackgroundColor,
                                      filled: true,
                                      prefixIcon: Icon(
                                        Icons.search_rounded,
                                        color: Colors.grey,
                                      ),
                                      suffixIcon: Icon(
                                        Icons.tune_rounded,
                                        color: Colors.grey,
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 20),
                          child: Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                            color: Theme.of(context).primaryColorDark,
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              width: screenWidth,
                              height: 230,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.all(10),
                                        clipBehavior: Clip.antiAlias,
                                        height: screenWidth * 0.25,
                                        width: screenWidth * 0.25,
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.circular(50),
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.all(5),
                                            // color: Colors.amber,
                                            height: 55,
                                            width: screenWidth * 0.475,
                                            child: Text(
                                              'Hai Selamat Datang, Fuad Wahyu Prabowo',
                                              maxLines: 2,
                                              style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
                                            ),
                                          ),
                                          SizedBox(
                                            width: screenWidth * 0.485,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Container(
                                                  margin: const EdgeInsets.all(5),
                                                  decoration: BoxDecoration(
                                                    color: Theme.of(context).focusColor,
                                                    borderRadius: BorderRadius.circular(12),
                                                  ),
                                                  height: 70,
                                                  width: screenWidth * 0.4 / 3,
                                                ),
                                                Container(
                                                  margin: const EdgeInsets.all(5),
                                                  height: 70,
                                                  width: screenWidth * 0.4 / 3,
                                                  decoration: BoxDecoration(
                                                    color: Theme.of(context).focusColor,
                                                    borderRadius: BorderRadius.circular(12),
                                                  ),
                                                ),
                                                Container(
                                                  margin: const EdgeInsets.all(5),
                                                  decoration: BoxDecoration(
                                                    color: Theme.of(context).focusColor,
                                                    borderRadius: BorderRadius.circular(12),
                                                  ),
                                                  height: 70,
                                                  width: screenWidth * 0.4 / 3,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  ElevatedButton(
                                    onPressed: () => _dialogBuilder(context),
                                    style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                      backgroundColor: Theme.of(context).focusColor.withOpacity(.6),
                                      minimumSize: Size(screenWidth * 0.8, 40),
                                    ),
                                    child: Text(
                                      'Tunjukan Kartu Anggota',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          child: Text(
                            'Kategori',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(
                              10,
                              (index) => Container(
                                margin: const EdgeInsets.all(10),
                                width: screenWidth * 0.2,
                                height: screenWidth * 0.2,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(.4),
                                      blurRadius: 5,
                                      offset: (Offset(1, 1)),
                                      blurStyle: BlurStyle.normal,
                                    ),
                                  ],
                                  color: Colors.white,
                                ),
                                child: kategoriIcon[index],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          child: Text(
                            'Text',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(
                              4,
                              (index) => GestureDetector(
                                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoanDetails())),
                                child: Container(
                                  margin: const EdgeInsets.all(10),
                                  width: screenWidth * 0.25,
                                  height: screenWidth * 0.35,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(.4),
                                        blurRadius: 5,
                                        offset: (Offset(1, 1)),
                                        blurStyle: BlurStyle.normal,
                                      ),
                                    ],
                                    color: Colors.white,
                                  ),
                                  child: Image.asset(
                                    'assets/img/matahari.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _dialogBuilder(BuildContext context) {
    setState(() {
      isPortrait = !isPortrait;
    });
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Row(children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: Image.asset(
                'assets/img/logo.png',
                width: 25,
                height: 25,
              ),
            ),
            const Text(
              'Library Management Systems',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
          ]),
          content: const Text('A dialog is a type of modal window that\n'
              'appears in front of app content to\n'
              'provide critical information, or prompt\n'
              'for a decision to be made.'),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Disable'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Enable'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
