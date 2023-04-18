import 'package:flutter/material.dart';

class EditProfil extends StatefulWidget {
  const EditProfil({super.key});

  @override
  State<EditProfil> createState() => _EditProfilState();
}

class _EditProfilState extends State<EditProfil> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController newpassword = TextEditingController();
  TextEditingController birthdate = TextEditingController();
  TextEditingController organizations = TextEditingController();
  TextEditingController gender = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController address = TextEditingController();
  final _formProfilKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(
          'Profile',
          style: TextStyle(
            // fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            width: screenWidth,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 75,
                  height: 75,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.amber,
                  ),
                ),
                Form(
                  key: _formProfilKey,
                  child: Column(
                    children: [
                      Builder(
                        builder: (context) => Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Theme.of(context).highlightColor.withOpacity(0.1),
                                spreadRadius: 0,
                                blurRadius: 10,
                                offset: const Offset(0, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: TextFormField(
                            initialValue: 'Fuad Wahyu Wibowo',
                            // controller: name,
                            style: TextStyle(
                              fontSize: 14,
                              // color: Theme.of(context).primaryColor,
                            ),
                            obscureText: false,
                            autofocus: false,
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12)), gapPadding: 4, borderSide: BorderSide.none),
                              labelText: 'Name',

                              labelStyle: TextStyle(
                                fontSize: 14,
                              ),
                              // hintText: 'Email',
                              hintStyle: TextStyle(fontSize: 14, color: Theme.of(context).primaryColor),
                              fillColor: Theme.of(context).highlightColor.withOpacity(.1),
                              filled: true,
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 17,
                                horizontal: 15,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Builder(
                        builder: (context) => Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Theme.of(context).highlightColor.withOpacity(0.1),
                                spreadRadius: 0,
                                blurRadius: 10,
                                offset: const Offset(0, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: TextFormField(
                            initialValue: 'fuad@gmail.com',
                            // controller: name,
                            style: TextStyle(
                              fontSize: 14,
                              // color: Theme.of(context).primaryColor,
                            ),
                            obscureText: false,
                            autofocus: false,
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12)), gapPadding: 4, borderSide: BorderSide.none),
                              labelText: 'Email',

                              labelStyle: TextStyle(
                                fontSize: 14,
                              ),
                              // hintText: 'Email',
                              hintStyle: TextStyle(fontSize: 14, color: Theme.of(context).primaryColor),
                              fillColor: Theme.of(context).highlightColor.withOpacity(.1),
                              filled: true,
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 17,
                                horizontal: 15,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Builder(
                        builder: (context) => Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Theme.of(context).highlightColor.withOpacity(0.1),
                                spreadRadius: 0,
                                blurRadius: 10,
                                offset: const Offset(0, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: TextFormField(
                            controller: newpassword,
                            style: TextStyle(
                              fontSize: 14,
                              // color: Theme.of(context).primaryColor,
                            ),
                            obscureText: false,
                            autofocus: false,
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12)), gapPadding: 4, borderSide: BorderSide.none),
                              hintText: 'Masukkan Password Baru',
                              labelText: 'Ganti Password',
                              hintStyle: TextStyle(
                                fontSize: 14,
                              ),
                              // hintText: 'Email',

                              fillColor: Theme.of(context).highlightColor.withOpacity(.1),
                              filled: true,
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 17,
                                horizontal: 15,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Builder(
                        builder: (context) => Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Theme.of(context).highlightColor.withOpacity(0.1),
                                spreadRadius: 0,
                                blurRadius: 10,
                                offset: const Offset(0, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: TextFormField(
                            initialValue: '12 Februari 1968',
                            // controller: name,
                            style: TextStyle(
                              fontSize: 14,
                              // color: Theme.of(context).primaryColor,
                            ),
                            obscureText: false,
                            autofocus: false,
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12)), gapPadding: 4, borderSide: BorderSide.none),
                              labelText: 'BirthDate',

                              labelStyle: TextStyle(
                                fontSize: 14,
                              ),
                              // hintText: 'Email',
                              hintStyle: TextStyle(fontSize: 14, color: Theme.of(context).primaryColor),
                              fillColor: Theme.of(context).highlightColor.withOpacity(.1),
                              filled: true,
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 17,
                                horizontal: 15,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Builder(
                        builder: (context) => Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Theme.of(context).highlightColor.withOpacity(0.1),
                                spreadRadius: 0,
                                blurRadius: 10,
                                offset: const Offset(0, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: TextFormField(
                            initialValue: 'SMA Negeri 2 Surakarta',
                            // controller: name,
                            style: TextStyle(
                              fontSize: 14,
                              // color: Theme.of(context).primaryColor,
                            ),
                            obscureText: false,
                            autofocus: false,
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12)), gapPadding: 4, borderSide: BorderSide.none),
                              labelText: 'School',

                              labelStyle: TextStyle(
                                fontSize: 14,
                              ),
                              // hintText: 'Email',
                              hintStyle: TextStyle(fontSize: 14, color: Theme.of(context).primaryColor),
                              fillColor: Theme.of(context).highlightColor.withOpacity(.1),
                              filled: true,
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 17,
                                horizontal: 15,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Builder(
                        builder: (context) => Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Theme.of(context).highlightColor.withOpacity(0.1),
                                spreadRadius: 0,
                                blurRadius: 10,
                                offset: const Offset(0, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: TextFormField(
                            initialValue: 'Laki-Laki',
                            // controller: name,
                            style: TextStyle(
                              fontSize: 14,
                              // color: Theme.of(context).primaryColor,
                            ),
                            obscureText: false,
                            autofocus: false,
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12)), gapPadding: 4, borderSide: BorderSide.none),
                              labelText: 'Gender',

                              labelStyle: TextStyle(
                                fontSize: 14,
                              ),
                              // hintText: 'Email',
                              hintStyle: TextStyle(fontSize: 14, color: Theme.of(context).primaryColor),
                              fillColor: Theme.of(context).highlightColor.withOpacity(.1),
                              filled: true,
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 17,
                                horizontal: 15,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Builder(
                        builder: (context) => Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Theme.of(context).highlightColor.withOpacity(0.1),
                                spreadRadius: 0,
                                blurRadius: 10,
                                offset: const Offset(0, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: TextFormField(
                            initialValue: '085123456789',
                            // controller: name,
                            style: TextStyle(
                              fontSize: 14,
                              // color: Theme.of(context).primaryColor,
                            ),
                            obscureText: false,
                            autofocus: false,
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12)), gapPadding: 4, borderSide: BorderSide.none),
                              labelText: 'Phone Number',

                              labelStyle: TextStyle(
                                fontSize: 14,
                              ),
                              // hintText: 'Email',
                              hintStyle: TextStyle(fontSize: 14, color: Theme.of(context).primaryColor),
                              fillColor: Theme.of(context).highlightColor.withOpacity(.1),
                              filled: true,
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 17,
                                horizontal: 15,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Builder(
                        builder: (context) => Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Theme.of(context).highlightColor.withOpacity(0.1),
                                spreadRadius: 0,
                                blurRadius: 10,
                                offset: const Offset(0, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: TextFormField(
                            initialValue: 'Jalan Angkasa, No. 169 Jebres, Jebres, Surakarta',
                            // controller: address,
                            style: TextStyle(
                              fontSize: 14,
                            ),
                            maxLines: 4,
                            obscureText: false,
                            autofocus: false,
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12)), gapPadding: 4, borderSide: BorderSide.none),
                              labelText: 'Address',
                              labelStyle: TextStyle(
                                fontSize: 14,
                              ),
                              // hintText: 'Email',
                              hintStyle: TextStyle(fontSize: 14, color: Theme.of(context).primaryColor),
                              fillColor: Theme.of(context).highlightColor.withOpacity(.1),
                              filled: true,
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 17,
                                horizontal: 15,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 20),
                        child: ButtonTheme(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Theme.of(context).primaryColor,
                                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.3, vertical: 20),
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(12)),
                                )),
                            child: const Text(
                              "Simpan",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
