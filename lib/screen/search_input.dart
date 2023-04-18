import 'package:flutter/material.dart';
import 'package:lims/screen/lists_scan_isbn.dart';
import 'package:lims/screen/search_result.dart';
// import 'package:provider/provider.dart';
// import 'package:validators/validators.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    List riwayat = [
      'Matahari',
      'Hujan Bulan Juni',
      'Hujan',
      'Pulang',
      'Pergi',
    ];
    // double screenWidth = MediaQuery.of(context).size.width;
    TextEditingController search = TextEditingController();
    final formKey = GlobalKey<FormState>();
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 75,
          iconTheme: IconThemeData(color: Colors.black),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Search',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ))
            ],
          ),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Form(
                key: formKey,
                child: Builder(
                  builder: (context) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20.0),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Material(
                              elevation: 0,
                              borderRadius: const BorderRadius.all(Radius.circular(50)),
                              child: TextFormField(
                                // validator: (value) {
                                //   if (value == null || !isEmail(value)) {
                                //     return 'Email is not valid!';
                                //   }
                                // },
                                // style: TextStyle(color: Theme.of(context).primaryColor.withOpacity(0.6)),
                                controller: search,
                                obscureText: false,
                                autofocus: false,
                                decoration: InputDecoration(
                                  border: const OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(50)),
                                  ),
                                  hintText: 'Telusuri Koleksi',
                                  hintStyle: TextStyle(fontSize: 14),
                                  fillColor: Theme.of(context).scaffoldBackgroundColor,
                                  filled: true,
                                  contentPadding: const EdgeInsets.symmetric(
                                    vertical: 15,
                                    horizontal: 10,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(30, 10, 0, 0),
                alignment: Alignment.topLeft,
                child: Text(
                  'Riwayat Anda',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                width: screenWidth * .9,
                // height: 30,
                child: Wrap(
                  spacing: 15,
                  runSpacing: 15,
                  // alignment: WrapAlignment.spaceAround,
                  direction: Axis.horizontal,
                  children: List.generate(riwayat.length, (index) {
                    return ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: BorderSide.none,
                        ),
                        primary: Theme.of(context).highlightColor,
                        onPrimary: Colors.black.withOpacity(.5),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: ((context) {
                          return const SearchResult();
                        })));
                      },
                      child: Text('${riwayat[index]}'),
                    );
                  }),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(30, 10, 0, 0),
                alignment: Alignment.topLeft,
                child: Text(
                  'Cari Kategori',
                  style: TextStyle(color: Colors.black.withOpacity(.5), fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                width: screenWidth * .9,
                // height: 30,
                child: Wrap(
                  spacing: 15,
                  runSpacing: 15,
                  // alignment: WrapAlignment.spaceAround,
                  direction: Axis.horizontal,
                  children: List.generate(riwayat.length, (index) {
                    return ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: BorderSide.none,
                        ),
                        primary: Theme.of(context).highlightColor,
                        onPrimary: Colors.black.withOpacity(.5),
                      ),
                      onPressed: () {},
                      child: Text('${riwayat[index]}'),
                    );
                  }),
                ),
              ),
            ],
          ),
        )));
  }
}
