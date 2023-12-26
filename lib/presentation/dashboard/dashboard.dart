// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:alot/core/colors/colors.dart';
import 'package:alot/presentation/dashboard/bottom_nav.dart';
import 'package:alot/presentation/dashboard/home/home_page.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({super.key});

  final _pages = [
    HomeScreen(),
    Container(),
    Container(),
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBackground,
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: bottomNavigationIndex,
          builder: (context, int index, _) {
            return _pages[index];
          },
        ),
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
