import 'package:facebooklogin/screen/signUp/signup.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailControl = TextEditingController();
  final _passwordControl = TextEditingController();

  loginSubmit() {
    print(_emailControl.text);
    print(_passwordControl.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/like_bg.jpg'),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'English',
                        style: TextStyle(fontWeight: FontWeight.w200),
                      ),
                      Text(' • '),
                      Text('عربي',
                          style: TextStyle(fontWeight: FontWeight.w100)),
                      Text(' • '),
                      Text(
                        'More...',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, color: Colors.blue),
                      ),
                    ],
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              //   child: Text('English • اللغة •, Bangla',
              //       style: TextStyle(fontWeight: FontWeight.w200)),
              // ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Phone number or email address',
                  ),
                  controller: _emailControl,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  decoration: const InputDecoration(labelText: 'Password'),
                  controller: _passwordControl,
                  keyboardType: TextInputType.visiblePassword,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: TextButton(
                  onPressed: () {
                    loginSubmit();
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.fromLTRB(140, 20, 140, 20),
                  ),
                  child: Text(
                    'LOG IN',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Forgotten password?',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              //   child: Text(
              //     'Forgotten Password?',
              //     style:
              //         TextStyle(color: Colors.blue, fontWeight: FontWeight.w700),
              //   ),
              // ),
              Divider(
                height: 5,
                indent: 1000,
                endIndent: 100,
              ),
              Row(
                children: [
                  Expanded(
                    child: new Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Divider(
                        color: Colors.black,
                        height: 36,
                      ),
                    ),
                  ),
                  Text("OR"),
                  Expanded(
                    child: new Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Divider(
                        color: Colors.black,
                        height: 36,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  ),
                  child: Text(
                    'CREATE NEW FACEBOOK ACCOUNT',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
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
