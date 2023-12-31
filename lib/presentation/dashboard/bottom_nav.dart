// ignore_for_file: prefer_const_constructors

import 'package:alot/core/colors/colors.dart';
import 'package:alot/presentation/dashboard/login/login_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

ValueNotifier<int> bottomNavigationIndex = ValueNotifier(0);

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: bottomNavigationIndex,
      builder: (context, int newIndex, _) {
        return BottomNavigationBar(
          currentIndex: newIndex,
          onTap: (index) {
            if (index == 1) {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  fullscreenDialog: true,
                  builder: (context) => LoginFormScreen(),
                ),
              );
              return;
            }
            bottomNavigationIndex.value = index;
            // print('after');
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: colorWhite,
          selectedItemColor: colorBlack,
          unselectedItemColor: colorGrey,
          selectedIconTheme: const IconThemeData(color: colorBlack),
          unselectedIconTheme: const IconThemeData(color: colorGrey),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border), label: 'Favorites'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.add_box,
                  color: colorBlue,
                  size: 30,
                ),
                label: 'Post an ad'),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Support'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: 'Account'),
          ],
        );
      },
    );
  }
}
