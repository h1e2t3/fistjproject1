import 'dart:core';

import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class Singupfild extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final IconData prefixIcon;
  final IconData? suffixIcon;
  final String title;
  final String Function(String?)? validator;

  const Singupfild(
      {super.key,
      this.controller,
      this.keyboardType,
      this.obscureText,
      required this.prefixIcon,
      this.suffixIcon,
      required this.title,
      this.validator});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Form(
        child: Column(
          children: [
            TextFormField(
              validator: validator,
              enabled: true,
              controller: controller,
              cursorColor: Colors.blue,
              style: TextStyle(color: Colors.white),
              keyboardType: keyboardType,
              obscureText: obscureText ?? false,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.white, width: 2)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 2)),
                  prefixIcon: Icon(prefixIcon, color: Colors.white),
                  suffixIcon: InkWell(
                      onTap: () {},
                      child: Icon(
                        suffixIcon,
                        color: Colors.white,
                      )),
                  hintText: title,
                  hintStyle: TextStyle(color: Colors.white)),
            ),

          ],
        ),
      ),
    );
  }
}
