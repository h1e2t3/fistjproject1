import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import 'Common_textfild.dart';

class S1 extends StatefulWidget {
  const S1({super.key});

  @override
  State<S1> createState() => _S1State();
}

final TextEditingController EmailController = TextEditingController();

class EmailValidator {
  static String? validate(value) {
    return value.isEmpty ? "Email can't be empty" : null;
  }
}

class _S1State extends State<S1> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: size.height,
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: size.height / 2.2,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Singupfild(
                      controller: EmailController,
                      prefixIcon: Icons.mail_outline_rounded,
                      title: 'Email',
                    ),
                    Singupfild(
                        prefixIcon: Icons.lock,
                        title: 'Password',
                        suffixIcon: Icons.remove_red_eye,
                        keyboardType: TextInputType.number,
                        obscureText: false),
                    Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: ElevatedButton(
                            onPressed: () {
                            },
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.white)),
                            child: Text("Login",style: TextStyle(color: Colors.black),)))
                  ],
                ),
              )
            ],
          )),
    );
  }
}
