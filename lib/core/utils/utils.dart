// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

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

class LoadAssetImage extends StatelessWidget {
  final String url;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final Alignment? alignment;

  LoadAssetImage(
      {super.key,
      required this.url,
      this.width,
      this.height,
      this.fit,
      this.alignment});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      url,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment == null ? Alignment.center : alignment!,
    );
  }
}

Color getColor(Set<MaterialState> states) {
  if (states.contains(MaterialState.selected)) {
    return Colors.blue; // Color when checkbox is checked
  }
  return Colors.white; // Color when checkbox is unchecked
}
