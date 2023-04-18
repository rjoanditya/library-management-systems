import 'package:flutter/material.dart';
import 'package:lims/screen/home-user.dart';
import 'package:lims/screen/index.dart';
import 'package:lims/screen/signup-anggota.dart';

class LoginAnggota extends StatefulWidget {
  const LoginAnggota({super.key});

  @override
  State<LoginAnggota> createState() => _LoginAnggotaState();
}

class _LoginAnggotaState extends State<LoginAnggota> {
  TextEditingController id = TextEditingController();
  TextEditingController password = TextEditingController();
  final _formLoginKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    bool passwordVisible = false;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 100, left: 100, top: 55, bottom: 10),
                child: Image.asset('assets/img/logo.png'),
              ),
              Container(
                child: Text(
                  'Library Management',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Theme.of(context).primaryColor),
                ),
              ),
              Container(
                child: Text(
                  'Systems',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 30),
                child: Form(
                  key: _formLoginKey,
                  child: Column(
                    children: [
                      Builder(
                        builder: (context) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25.0),
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  TextFormField(
                                    validator: (value) {},
                                    controller: id,
                                    obscureText: false,
                                    autofocus: false,
                                    decoration: InputDecoration(
                                      border: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(16)),
                                      ),
                                      label: const Text('ID'),
                                      hintStyle: TextStyle(fontSize: 14, color: Theme.of(context).primaryColor),
                                      fillColor: Theme.of(context).scaffoldBackgroundColor,
                                      filled: true,
                                      contentPadding: const EdgeInsets.symmetric(
                                        vertical: 20,
                                        horizontal: 10,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Builder(
                        builder: (context) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 25.0),
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  TextFormField(
                                    validator: (value) {},
                                    controller: password,
                                    obscureText: !passwordVisible,
                                    autofocus: false,
                                    decoration: InputDecoration(
                                      border: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(16)),
                                      ),
                                      label: const Text('Password'),
                                      hintStyle: TextStyle(fontSize: 14, color: Theme.of(context).primaryColor),
                                      fillColor: Theme.of(context).scaffoldBackgroundColor,
                                      filled: true,
                                      contentPadding: const EdgeInsets.symmetric(
                                        vertical: 20,
                                        horizontal: 10,
                                      ),
                                      suffixIcon: IconButton(
                                        padding: const EdgeInsets.only(right: 15),
                                        icon: Icon(
                                          Icons.visibility,
                                          color: Theme.of(context).primaryColorLight,
                                        ),
                                        onPressed: () {},
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const Index()));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Theme.of(context).primaryColor,
                              padding: const EdgeInsets.symmetric(horizontal: 92.5, vertical: 20),
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(16)),
                              )),
                          child: const Text(
                            "Login Anggota",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Belum memiliki Akun? '),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignupAnggota()));
                                },
                                child: Text(
                                  'Daftar Disini',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              )
                            ],
                          )),
                    ],
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
