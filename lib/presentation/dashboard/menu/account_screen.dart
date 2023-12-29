// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:alot/core/colors/colors.dart';
import 'package:alot/core/dims/dims.dart';
import 'package:alot/presentation/dashboard/login/login_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        children: [
          ListTile(
            titleTextStyle:
                GoogleFonts.poppins(color: colorBlack, fontSize: 17),
            subtitleTextStyle:
                GoogleFonts.poppins(color: colorGrey, fontSize: 13),
            leading: Image.network(
              'https://img.icons8.com/color/48/men-age-group-4.png',
            ),
            title: Text(
              'Hi there,',
            ),
            subtitle: Text('Sign in for a more personalized experience'),
          ),
          height10,
          OutlinedButton(
            onPressed: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  fullscreenDialog: true,
                  builder: (context) => LoginFormScreen(),
                ),
              );
            },
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: colorBlue),
            ),
            child: Text('Log in'),
          ),
          height10,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Don\'t have an account?',
                style: GoogleFonts.poppins(fontSize: 12),
              ),
              width5,
              Text(
                'Create one',
                style: GoogleFonts.poppins(color: colorBlue, fontSize: 12),
              )
            ],
          ),
          height20,
          Divider(),
          height20,
          Text(
            'Settings',
            style: GoogleFonts.poppins(color: colorGrey),
          ),
          ListTile(
            onTap: () {
              List<LanguageModel> model = [];
              model.add(LanguageModel(name: "All UAE", isSelected: true));
              model.add(LanguageModel(name: "Abu Dhabi", isSelected: false));
              model.add(LanguageModel(name: "Dubai", isSelected: false));
              model.add(LanguageModel(name: "Sharjah", isSelected: false));
              model.add(LanguageModel(name: "Ajman", isSelected: false));
              model
                  .add(LanguageModel(name: "Umm Al-Quwain", isSelected: false));
              model.add(LanguageModel(name: "Fujairah", isSelected: false));
              model.add(
                  LanguageModel(name: "Ras Al Khaimah", isSelected: false));
              showModalBottomSheet<void>(
                context: context,
                isScrollControlled: true,
                constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height * 0.75),
                builder: (BuildContext context) {
                  return DraggableScrollableSheet(
                      expand: false,
                      builder: (context, scrollController) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Select City',
                                    style: GoogleFonts.poppins(
                                        fontSize: 16, color: colorBlack),
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      icon: Icon(
                                        Icons.close,
                                        size: 25,
                                      ))
                                ],
                              ),
                              Divider(),
                              height20,
                              Expanded(
                                child: ListView.separated(
                                  controller: scrollController,
                                  itemBuilder: (ctx, index) {
                                    return ListTile(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      leading: Text(model[index].name),
                                      trailing: model[index].isSelected
                                          ? Icon(
                                              Icons.done,
                                              color: colorBlue,
                                            )
                                          : SizedBox(),
                                    );
                                  },
                                  separatorBuilder: (context, index) =>
                                      Divider(),
                                  itemCount: model.length,
                                ),
                              )
                            ],
                          ),
                        );
                      });
                },
              );
            },
            titleTextStyle: GoogleFonts.poppins(color: colorBlack),
            leading: Icon(
              Icons.location_city,
              color: colorBlack,
            ),
            title: Text('City'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'All UAE',
                  style: GoogleFonts.poppins(color: colorGrey, fontSize: 12),
                ),
                width5,
                Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                  color: colorBlack,
                )
              ],
            ),
          ),
          ListTile(
            onTap: () {
              List<LanguageModel> model = [];
              model.add(LanguageModel(name: "English", isSelected: true));
              model.add(LanguageModel(name: "عربي", isSelected: false));

              showModalBottomSheet<void>(
                context: context,
                isScrollControlled: true,
                constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height * 0.75),
                builder: (BuildContext context) {
                  return DraggableScrollableSheet(
                      expand: false,
                      builder: (context, scrollController) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Select Language',
                                    style: GoogleFonts.poppins(
                                        fontSize: 16, color: colorBlack),
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      icon: Icon(
                                        Icons.close,
                                        size: 25,
                                      ))
                                ],
                              ),
                              Divider(),
                              height20,
                              Expanded(
                                child: ListView.separated(
                                  controller: scrollController,
                                  itemBuilder: (ctx, index) {
                                    return ListTile(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      leading: Text(model[index].name),
                                      trailing: model[index].isSelected
                                          ? Icon(
                                              Icons.done,
                                              color: colorBlue,
                                            )
                                          : SizedBox(),
                                    );
                                  },
                                  separatorBuilder: (context, index) =>
                                      Divider(),
                                  itemCount: model.length,
                                ),
                              )
                            ],
                          ),
                        );
                      });
                },
              );
            },
            titleTextStyle: GoogleFonts.poppins(color: colorBlack),
            leading: Icon(
              Icons.language,
              color: colorBlack,
            ),
            title: Text('Language'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'English',
                  style: GoogleFonts.poppins(color: colorGrey, fontSize: 12),
                ),
                width5,
                Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                  color: colorBlack,
                )
              ],
            ),
          ),
          height20,
          Divider(),
          height20,
          Text(
            'Others',
            style: GoogleFonts.poppins(color: colorGrey),
          ),
          ListTile(
            onTap: () {
              List<LanguageModel> model = [];
              model.add(LanguageModel(name: "Proeprty Blog", isSelected: true));
              model.add(LanguageModel(name: "Car Blog", isSelected: false));

              showModalBottomSheet<void>(
                context: context,
                isScrollControlled: true,
                constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height * 0.75),
                builder: (BuildContext context) {
                  return DraggableScrollableSheet(
                      expand: false,
                      builder: (context, scrollController) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Wrap(
                            //  mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Blogs',
                                    style: GoogleFonts.poppins(
                                        fontSize: 16, color: colorBlack),
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      icon: Icon(
                                        Icons.close,
                                        size: 25,
                                      ))
                                ],
                              ),
                              Divider(),
                              height20,
                              ListView.separated(
                                controller: scrollController,
                                shrinkWrap: true,
                                itemBuilder: (ctx, index) {
                                  return ListTile(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    leading: Text(model[index].name),
                                    trailing: model[index].isSelected
                                        ? Icon(
                                            Icons.done,
                                            color: colorBlue,
                                          )
                                        : SizedBox(),
                                  );
                                },
                                separatorBuilder: (context, index) => Divider(),
                                itemCount: model.length,
                              )
                            ],
                          ),
                        );
                      });
                },
              );
            },
            titleTextStyle: GoogleFonts.poppins(color: colorBlack),
            leading: Icon(
              Icons.article_outlined,
              color: colorBlack,
            ),
            title: Text('Blogs'),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 15,
              color: colorBlack,
            ),
          ),
          ListTile(
            onTap: () {},
            titleTextStyle: GoogleFonts.poppins(color: colorBlack),
            leading: Icon(
              Icons.chat_outlined,
              color: colorBlack,
            ),
            title: Text('Support'),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 15,
              color: colorBlack,
            ),
          ),
          ListTile(
            onTap: () {},
            titleTextStyle: GoogleFonts.poppins(color: colorBlack),
            leading: Icon(
              Icons.call_outlined,
              color: colorBlack,
            ),
            title: Text('Call Us'),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 15,
              color: colorBlack,
            ),
          ),
          ListTile(
            onTap: () {},
            titleTextStyle: GoogleFonts.poppins(color: colorBlack),
            leading: Icon(
              Icons.checklist_rtl,
              color: colorBlack,
            ),
            title: Text('Terms & Conditions'),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 15,
              color: colorBlack,
            ),
          ),
          ListTile(
            onTap: () {},
            titleTextStyle: GoogleFonts.poppins(color: colorBlack),
            leading: Icon(
              Icons.campaign_outlined,
              color: colorBlack,
            ),
            title: Text('Advertising'),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 15,
              color: colorBlack,
            ),
          ),
        ],
      ),
    );
  }
}

class LanguageModel {
  final String name;
  bool isSelected;

  LanguageModel({required this.name, required this.isSelected});
}
