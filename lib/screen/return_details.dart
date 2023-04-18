import 'package:flutter/material.dart';
import 'package:lims/model/document.dart';
import 'package:lims/screen/reader_screen.dart';

class ReturnDetails extends StatelessWidget {
  const ReturnDetails({super.key});
  @override
  Widget build(BuildContext context) {
    Document doc = Document.doc_list.first;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        actions: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  'ISBN/ISSN',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Text('01231231312312312'),
              ),
            ],
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            width: screenWidth,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  width: 120,
                  height: 175,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey.withOpacity(.3),
                  ),
                  child: Image.asset(
                    'assets/img/matahari.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Theme.of(context).primaryColor,
                  ),
                  child: Text(
                    'Romance',
                    style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Text(
                    'Bintang',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    'Tere Liye',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.shopping_cart,
                          size: 20,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            'Penanda',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.share,
                          size: 20,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            'Bagikan',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Container(margin: const EdgeInsets.symmetric(vertical: 10), child: Divider()),
                Container(
                  width: screenWidth,
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Text(
                    'Tentang Buku',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Theme.of(context).primaryColor.withOpacity(.3),
                  ),
                  child: Wrap(
                    spacing: 35,
                    runSpacing: 20,
                    children: [
                      Container(
                        width: screenWidth * 0.2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Nomor Panggil',
                              style: TextStyle(fontSize: 12),
                            ),
                            Text(
                              'B0123',
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: screenWidth * 0.2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ketersediaan',
                              style: TextStyle(fontSize: 12),
                            ),
                            Text(
                              '500',
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: screenWidth * 0.2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Tipe Media',
                              style: TextStyle(fontSize: 12),
                            ),
                            Text(
                              'PDF',
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: screenWidth * 0.2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Bahasa',
                              style: TextStyle(fontSize: 12),
                            ),
                            Text(
                              'Indonesia',
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: screenWidth * 0.2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Collation',
                              style: TextStyle(fontSize: 12),
                            ),
                            Text(
                              '¶-2¶6',
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: screenWidth * 0.2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Klasifikasi',
                              style: TextStyle(fontSize: 12),
                            ),
                            Text(
                              'B0123',
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: screenWidth * 0.2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Subjek',
                              style: TextStyle(fontSize: 12),
                            ),
                            Text(
                              'B0123',
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: screenWidth * 0.2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Tipe Konten',
                              style: TextStyle(fontSize: 12),
                            ),
                            Text(
                              'Novel',
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: screenWidth * 0.2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Tipe Karir',
                              style: TextStyle(fontSize: 12),
                            ),
                            Text(
                              'B0123',
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: screenWidth * 0.2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Edisi',
                              style: TextStyle(fontSize: 12),
                            ),
                            Text(
                              'Pertama',
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: screenWidth * 0.2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Penerbit',
                              style: TextStyle(fontSize: 12),
                            ),
                            Text(
                              'Gramedia Indonesia',
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: screenWidth * 0.2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Pernyataan',
                              style: TextStyle(fontSize: 12),
                            ),
                            Text(
                              'B0123',
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: screenWidth,
                  margin: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                  child: Text(
                    'Sinopsis',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  width: screenWidth,
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ornare hendrerit nunc, a ornare neque condimentum vitae. Curabitur sagittis justo elit, nec fermentum ipsum venenatis tempor. Curabitur tincidunt mauris ac imperdiet dapibus. Vivamus augue purus, bibendum ',
                    textAlign: TextAlign.start,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      width: screenWidth * 0.375,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Theme.of(context).primaryColor,
                            minimumSize: Size(screenWidth, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            )),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ReaderScreen(doc)));
                          print(doc);
                        },
                        child: Text(
                          'Buka',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      width: screenWidth * 0.375,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Theme.of(context).primaryColor,
                            minimumSize: Size(screenWidth, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            )),
                        onPressed: () {},
                        child: Text(
                          'Kembalikan',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
