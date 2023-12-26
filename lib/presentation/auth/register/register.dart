// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:alot/core/colors/colors.dart';
import 'package:alot/core/dims/dims.dart';
import 'package:alot/core/utils/utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegistrationScreen extends StatefulWidget {
  RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _mobileController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  final TextEditingController _confirmPasswordController =
      TextEditingController();

  var isChecked = false;

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
            Image.asset(
              'assets/logos/footer-logo.png',
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
              'Register',
              textAlign: TextAlign.start,
              style: GoogleFonts.poppins(
                color: colorBlack,
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            height3,
            Text(
              'Signup to get complete access to post jobs, post ads etc.',
              textAlign: TextAlign.start,
              style: GoogleFonts.poppins(
                color: colorGrey,
                fontSize: 12.0,
                fontWeight: FontWeight.normal,
              ),
            ),
            height15,
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
                label: Text("Signup with Google", style: GoogleFonts.poppins()),
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
            TextFormField(
              controller: _nameController,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Required';
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
                  label: Text("Name", style: GoogleFonts.poppins()),
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
            height10,
            TextFormField(
              controller: _mobileController,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter mobile number';
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
                  label: Text("Mobile Number", style: GoogleFonts.poppins()),
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
                  return 'Please enter Password';
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
              controller: _confirmPasswordController,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter confirm password';
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
                  label: Text("Confirm Password", style: GoogleFonts.poppins()),
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
            height20,
            Row(
              children: [
                Checkbox(
                  checkColor: Colors.white,
                  fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: isChecked,
                  shape: CircleBorder(side: BorderSide.none),
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                        text: "I accept the",
                        style: GoogleFonts.poppins(color: colorBlack),
                        children: [
                          TextSpan(
                              text: ' terms and conditions',
                              style: GoogleFonts.poppins(color: colorBlue),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  showSnackBar(
                                      context, "terms and conditions clicked");
                                }),
                          TextSpan(
                            text: ' and ',
                            style: GoogleFonts.poppins(),
                          ),
                          TextSpan(
                              text: 'privacy policy',
                              style: GoogleFonts.poppins(color: colorBlue),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  showSnackBar(
                                      context, "privacy policy clicked");
                                }),
                        ]),
                  ),
                ),
              ],
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
                child: Text("Register",
                    style: GoogleFonts.poppins(fontWeight: FontWeight.bold)),
              ),
            ),
            height40,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
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
            height30
          ],
        ),
      ),
    );
  }

  Color getColor(Set<MaterialState> states) {
    if (states.contains(MaterialState.selected)) {
      return Colors.blue; // Color when checkbox is checked
    }
    return Colors.white; // Color when checkbox is unchecked
  }
}
