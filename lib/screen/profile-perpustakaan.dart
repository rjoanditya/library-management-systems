import 'package:flutter/material.dart';

class ProfilePerpustakaan extends StatelessWidget {
  const ProfilePerpustakaan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        title: const Text(
          'Profil Perpustakaan',
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
              /**
               * Sejarah Singkat 
               */
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: const Text(
                  'Sejarah Singkat',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                child: const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ornare hendrerit nunc, a ornare neque condimentum vitae. Curabitur sagittis justo elit, nec fermentum ipsum venenatis tempor. Curabitur tincidunt mauris ac',
                  textAlign: TextAlign.justify,
                ),
              ),
              const Divider(
                height: 5,
                thickness: 0.3,
                indent: 0,
                endIndent: 0,
                color: Colors.black,
              ),

              /**
               * Contact Information
               */
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: const Text(
                  'Kontak Informasi',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(child: Text('Alamat')),
                          Expanded(child: Text(': Jalan Kolonel Sugiri')),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(child: Text('Kode Pos')),
                          Expanded(child: Text(': 532340')),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(child: Text('Phone')),
                          Expanded(child: Text(': +6323139123123')),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(child: Text('Fax')),
                          Expanded(child: Text(': 12313123123')),
                        ],
                      ),
                    ],
                  )),
              const Divider(
                height: 5,
                thickness: 0.3,
                indent: 0,
                endIndent: 0,
                color: Colors.black,
              ),
              /**
               * Open Hours
               */
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: const Text(
                  'Jam Buka',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            flex: 1,
                            child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                                decoration: BoxDecoration(
                                  color: Colors.blue.withOpacity(.5),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Text(
                                  'Senin - Sabtu',
                                  textAlign: TextAlign.center,
                                )),
                          ),
                          Flexible(
                            flex: 1,
                            child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                                decoration: BoxDecoration(
                                  color: Colors.blue.withOpacity(.5),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Text(
                                  'Minggu',
                                  textAlign: TextAlign.center,
                                )),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(child: Text('Open : 8.00 - 20.00')),
                          Expanded(
                              child: Text(
                            'Open : 8.00 - 17.00',
                            textAlign: TextAlign.end,
                          )),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Text(
                            'Break : 12.00 - 13.00',
                            textAlign: TextAlign.start,
                          )),
                          Expanded(
                              child: Text(
                            'Break : 12.00 - 13.00',
                            textAlign: TextAlign.end,
                          )),
                        ],
                      ),
                    ],
                  )),
              const Divider(
                height: 5,
                thickness: 0.3,
                indent: 0,
                endIndent: 0,
                color: Colors.black,
              ),
              /**
               * Collections 
               */
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: const Text(
                  'Koleksi',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                child: const Text(
                  'We have many types of collections in our library, range from Fictions to Sciences Material, from printed material to digital collections such CD-ROM, CD, VCD and DVD. We also collect daily serials publications such as newspaper and also monthly serials such as magazines',
                  textAlign: TextAlign.justify,
                ),
              ),
              const Divider(
                height: 5,
                thickness: 0.3,
                indent: 0,
                endIndent: 0,
                color: Colors.black,
              ),
              /**
               * Lib Membership 
               */
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: const Text(
                  'Membership Perpustakaan',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                child: const Text(
                  'To be able to loan our library collections, you must first become library member. There is terms and conditions that you must obey.',
                  textAlign: TextAlign.justify,
                ),
              ),
              const Divider(
                height: 5,
                thickness: 0.3,
                indent: 0,
                endIndent: 0,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
