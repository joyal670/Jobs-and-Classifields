// ignore_for_file: prefer_const_constructors

import 'package:alot/core/colors/colors.dart';
import 'package:alot/core/dims/dims.dart';
import 'package:alot/core/utils/utils.dart';
import 'package:alot/presentation/auth/forgot_password/forgot_password.dart';
import 'package:alot/presentation/auth/register/register.dart';
import 'package:alot/presentation/dashboard/dashboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: colorBackground,
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.all(25),
          children: [
            Align(
              alignment: Alignment.topRight,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => DashboardScreen(),
                    ),
                  );
                },
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
              'Member Login',
              textAlign: TextAlign.start,
              style: GoogleFonts.poppins(
                color: colorBlack,
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            height3,
            Text(
              'Enter your email address and password to login',
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
                  label:
                      Text("Enter email address", style: GoogleFonts.poppins()),
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
            height10,
            TextFormField(
              controller: _passwordController,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter password';
                }
                return null;
              },
              textInputAction: TextInputAction.done,
              obscureText: true,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: colorWhite,
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  // constraints: BoxConstraints.expand(height: 50),
                  constraints:
                      const BoxConstraints(maxHeight: 70, minHeight: 35),
                  label: Text("Password", style: GoogleFonts.poppins()),
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
                      borderSide: BorderSide(color: colorRed)),
                  focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: colorRed)),
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
                child: Text("Login",
                    style: GoogleFonts.poppins(fontWeight: FontWeight.bold)),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => ForgotPasswordScreen(),
                    ),
                  );
                },
                child: Text(
                  'Forgot password',
                  style: GoogleFonts.poppins(
                    color: colorBlack,
                  ),
                ),
              ),
            ),
            height40,
            Align(
              alignment: Alignment.center,
              child: Text(
                'or login using your social account',
                style: GoogleFonts.poppins(
                  color: colorGrey,
                ),
              ),
            ),
            height20,
            SizedBox(
              width: double.infinity,
              height: 40,
              child: ElevatedButton.icon(
                onPressed: () async {},
                icon: Image.asset(
                  'assets/images/google.png',
                  width: 20,
                  height: 20,
                ),
                label: Text("Signin with Google", style: GoogleFonts.poppins()),
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(colorRed)),
              ),
            ),
            height10,
            SizedBox(
              width: double.infinity,
              height: 40,
              child: ElevatedButton.icon(
                onPressed: () async {},
                icon: Image.asset(
                  'assets/images/facebook.png',
                  width: 20,
                  height: 20,
                ),
                label:
                    Text("Connect with Facebook", style: GoogleFonts.poppins()),
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(colorBlueAccent)),
              ),
            ),
            height25,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an Account?",
                  style: GoogleFonts.poppins(
                    color: colorBlack,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                width5,
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => RegistrationScreen(),
                      ),
                    );
                  },
                  child: Text(
                    "Register",
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
