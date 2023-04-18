import 'package:flutter/material.dart';
import 'package:lims/screen/loan_details.dart';
import 'package:lims/screen/edit_profile.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:lims/screen/profile.dart';
import '../model/data.dart';

class SearchResult extends StatefulWidget {
  const SearchResult({super.key});

  @override
  State<SearchResult> createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  @override
  Widget build(BuildContext context) {
    List data = [
      'Paling relevan',
      'Baru ditambahkan',
      'Perubahan terakhir',
      'Sering dipinjam',
      'Tahun terbit (Terbaru)',
      'Tahun terbit (Terlama)',
      'Urutkan dari atas',
      'Urutkan dari bawah',
    ];
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: DropdownSearch<dynamic>(
          popupProps: PopupProps.menu(
            itemBuilder: (context, item, isSelected) {
              return Container(
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Text(
                  item ?? "",
                ),
              );
            },
            // menuProps: MenuProps(
            //   elevation: 10,
            //   backgroundColor: Theme.of(context).highlightColor,
            // ),
            listViewProps: const ListViewProps(
              padding: EdgeInsets.symmetric(vertical: 10),
            ),
            fit: FlexFit.loose,

            // itemBuilder: listItem,
          ),
          items: data,
          dropdownDecoratorProps: const DropDownDecoratorProps(
            // baseStyle: TextStyle(color: Theme.of(context).primaryColor),
            dropdownSearchDecoration: InputDecoration(
              hintText: 'Filter',
              hintStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            ),
          ),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      4,
                      (index) => Container(
                            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.grey.withOpacity(.2),
                            ),
                            child: Text('Lorem'),
                          )),
                ),
              ),
              Column(
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
            ],
          ),
        ),
      ),
    );
  }
}
