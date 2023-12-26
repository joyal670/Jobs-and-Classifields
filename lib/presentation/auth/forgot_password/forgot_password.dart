// ignore_for_file: prefer_const_constructors

import 'package:alot/core/colors/colors.dart';
import 'package:alot/core/dims/dims.dart';
import 'package:alot/core/utils/utils.dart';
import 'package:alot/presentation/auth/register/register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({super.key});

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBackground,
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.all(25),
          children: [
            Align(
              alignment: Alignment.topRight,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Skip',
                  style: GoogleFonts.poppins(color: colorGrey),
                ),
              ),
            ),
            height35,
            LoadAssetImage(
              url: 'assets/logos/footer-logo.png',
              height: 60,
              width: 60,
              alignment: Alignment.center,
            ),
            height5,
            Text(
              'We mean a lot!',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                color: colorBlack,
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            height45,
            Text(
              'Forgot Password',
              textAlign: TextAlign.start,
              style: GoogleFonts.poppins(
                color: colorBlack,
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            height3,
            Text(
              'Enter your email address to request a new password',
              textAlign: TextAlign.start,
              style: GoogleFonts.poppins(
                color: colorGrey,
                fontSize: 12.0,
                fontWeight: FontWeight.normal,
              ),
            ),
            height15,
            TextFormField(
              controller: _emailController,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter email address';
                }
                return null;
              },
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: colorWhite,
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  // constraints: BoxConstraints.expand(height: 50),
                  constraints:
                      const BoxConstraints(maxHeight: 70, minHeight: 35),
                  label: Text("Email address", style: GoogleFonts.poppins()),
                  labelStyle:
                      TextStyle(color: colorGrey, fontWeight: FontWeight.w500),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none),
                  focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none),
                  floatingLabelBehavior: FloatingLabelBehavior.never),
              maxLines: 1,
            ),
            height25,
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {}
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: colorBlue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: Text("Request Password",
                    style: GoogleFonts.poppins(fontWeight: FontWeight.bold)),
              ),
            ),
            height40,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Back to",
                  style: GoogleFonts.poppins(
                    color: colorBlack,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                width5,
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Login",
                    style: GoogleFonts.poppins(
                        color: colorBlue, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
