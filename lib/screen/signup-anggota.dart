import 'package:flutter/material.dart';
import 'package:lims/screen/login-anggota.dart';

class SignupAnggota extends StatefulWidget {
  const SignupAnggota({super.key});

  @override
  State<SignupAnggota> createState() => _SignupAnggotaState();
}

class _SignupAnggotaState extends State<SignupAnggota> {
  TextEditingController nickname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final _formSignUpKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    bool passwordVisible = false;
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: screenWidth,
                height: screenHeight * 0.245,
                margin: const EdgeInsets.symmetric(vertical: 0),
                child: Image.asset('assets/img/illustrations.png'),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 30),
                child: Text(
                  'Sign Up!',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
              ),
              Center(
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.3),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(
                    Icons.camera_alt,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Form(
                  key: _formSignUpKey,
                  child: Column(
                    children: [
                      Builder(
                        builder: (context) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10.0),
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  TextFormField(
                                    validator: (value) {},
                                    controller: nickname,
                                    obscureText: false,
                                    autofocus: false,
                                    decoration: InputDecoration(
                                      label: const Text('Name'),
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
                          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10.0),
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  TextFormField(
                                    validator: (value) {},
                                    controller: email,
                                    obscureText: false,
                                    autofocus: false,
                                    decoration: InputDecoration(
                                      label: const Text('Email'),
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
                          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10.0),
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
                        margin: const EdgeInsets.symmetric(vertical: 30),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Theme.of(context).primaryColor,
                              padding: const EdgeInsets.symmetric(horizontal: 92.5, vertical: 20),
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(16)),
                              )),
                          child: const Text(
                            "Daftar Anggota",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Sudah Memiliki Akun? '),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoginAnggota()));
                                },
                                child: Text(
                                  'Login Disini',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              )
                            ],
                          )),
                    ],
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
