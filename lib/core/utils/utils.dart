// ignore_for_file: prefer_const_constructors

import 'package:alot/core/colors/colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

DateTime loginClickTime = DateTime.now();
const Duration clickInterval = Duration(seconds: 2);

bool isRedundantClick(DateTime currentTime) {
  if (loginClickTime == null ||
      currentTime.difference(loginClickTime) >= clickInterval) {
    loginClickTime = currentTime;
    if (kDebugMode) {
      print("Click processed");
    }
    return false;
  } else {
    if (kDebugMode) {
      print("Redundant click");
    }
    return true;
  }
}

void showSnackBar(BuildContext context, String title) {
  var snackBar = SnackBar(
    content: Text(title),
    action: SnackBarAction(
      label: 'dismiss',
      onPressed: () {
        ScaffoldMessenger.of(context).hideCurrentSnackBar();
      },
      textColor: colorAmber,
    ),
  );
  ScaffoldMessenger.of(context)
    ..removeCurrentSnackBar()
    ..showSnackBar(snackBar);
}
