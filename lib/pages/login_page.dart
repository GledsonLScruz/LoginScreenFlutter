// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_login_screen/pages/password_recovery_page.dart';
import 'package:flutter_login_screen/pages/sing_up_page.dart';
import 'package:flutter_login_screen/widgets/custom_page_route.dart';

import '../widgets/edit_text_custom.dart';
import '../widgets/password_edit_text.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Flexible(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Icon(
                      Icons.android,
                      size: 150,
                    ),
                    Text('Login',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 24)),
                    SizedBox(height: 20),
                    EditTextCustom(hint: "Email"),
                    SizedBox(height: 15),
                    PasswordEditText(),
                    SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          SlidePageRoute(
                              builder: (context) => new PasswordRecoveryPage()),
                        );
                        ;
                      },
                      child: Text('Esqueci minha senha',
                          textAlign: TextAlign.right,
                          style:
                              TextStyle(fontSize: 14, color: Colors.black45)),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ))),
                        onPressed: () => {},
                        child: Padding(
                            padding: EdgeInsets.all(20), child: Text("Login"))),
                    SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          SlidePageRoute(
                              builder: (context) => new SingUpPage()),
                        );
                      },
                      child: Text('Não tem conta? cadastre-se',
                          textAlign: TextAlign.center,
                          style:
                              TextStyle(fontSize: 14, color: Colors.black45)),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
