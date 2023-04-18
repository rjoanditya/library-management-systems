import 'package:flutter/material.dart';

class LoginPustakawan extends StatefulWidget {
  const LoginPustakawan({super.key});

  @override
  State<LoginPustakawan> createState() => _LoginPustakawanState();
}

class _LoginPustakawanState extends State<LoginPustakawan> {
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
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(horizontal: 83, vertical: 20),
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(16)),
                              )),
                          child: const Text(
                            "Login Pustakawan",
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
                                onTap: () {},
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
