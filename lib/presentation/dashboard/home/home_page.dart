// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:alot/core/colors/colors.dart';
import 'package:alot/core/dims/dims.dart';
import 'package:alot/domain/entity/home_page_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<HomeCategoryModel> homeCategoryList = [];
  List<HomeLocationModel> homeLocationList = [];

  @override
  Widget build(BuildContext context) {
    getCategories();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            CupertinoSearchTextField(),
            Expanded(
              child: ListView(
                children: [
                  height30,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Browse By Category',
                        style: GoogleFonts.poppins(
                            color: colorBlack, fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.arrow_forward))
                    ],
                  ),
                  height3,
                  MainCategories(
                    homeCategoryList: homeCategoryList,
                  ),
                  height60,
                  LookingForJob(),
                  height60,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Browse By City',
                        style: GoogleFonts.poppins(
                            color: colorBlack, fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.arrow_forward))
                    ],
                  ),
                  height3,
                  LocationCategories(
                    homeLocationList: homeLocationList,
                  ),
                  height60,
                  FreeClassified()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void getCategories() {
    homeCategoryList.clear();
    homeCategoryList.add(
      HomeCategoryModel(
        url: 'https://img.icons8.com/ios/50/property.png',
        title: 'Properties',
      ),
    );
    homeCategoryList.add(
      HomeCategoryModel(
        url:
            'https://img.icons8.com/external-line-adri-ansyah/64/external-mobile-mobile-application-line-adri-ansyah-14.png',
        title: 'Mobiles',
      ),
    );
    homeCategoryList.add(
      HomeCategoryModel(
        url: 'https://img.icons8.com/ios/50/lawyer.png',
        title: 'Jobs',
      ),
    );
    homeCategoryList.add(
      HomeCategoryModel(
        url: 'https://img.icons8.com/fluency-systems-regular/48/motorcycle.png',
        title: 'Bikes',
      ),
    );
    homeCategoryList.add(
      HomeCategoryModel(
        url: 'https://img.icons8.com/ios/50/appliances.png',
        title: 'Electronic & Appliances',
      ),
    );
    homeCategoryList.add(
      HomeCategoryModel(
        url: 'https://img.icons8.com/ios-filled/50/car-seat.png',
        title: 'Commercial Vechile & Spares',
      ),
    );
    homeCategoryList.add(
      HomeCategoryModel(
        url: 'https://img.icons8.com/ios/50/furniture.png',
        title: 'Furniture',
      ),
    );
    homeCategoryList.add(
      HomeCategoryModel(
        url: 'https://img.icons8.com/ios-glyphs/30/women-shoe-side-view.png',
        title: 'Fashion',
      ),
    );
    homeCategoryList.add(
      HomeCategoryModel(
        url: 'https://img.icons8.com/ios/50/books.png',
        title: 'Books, Sports & Hobbies',
      ),
    );
    homeCategoryList.add(
      HomeCategoryModel(
        url: 'https://img.icons8.com/ios-glyphs/30/cat-footprint.png',
        title: 'Pets',
      ),
    );
    homeCategoryList.add(
      HomeCategoryModel(
        url: 'https://img.icons8.com/ios/50/services--v1.png',
        title: 'Services',
      ),
    );

    homeLocationList.clear();
    homeLocationList.add(HomeLocationModel(location: 'Abu Dhabi', count: '3'));
    homeLocationList.add(HomeLocationModel(location: 'Ajman', count: '0'));
    homeLocationList.add(HomeLocationModel(location: 'Al Ain', count: '0'));
    homeLocationList
        .add(HomeLocationModel(location: 'Al Jazirah Al Hamra', count: '1'));
    homeLocationList.add(HomeLocationModel(location: 'Al Madam', count: '1'));
    homeLocationList.add(HomeLocationModel(location: 'Ar-Rams', count: '0'));
    homeLocationList.add(HomeLocationModel(location: 'Dhaid', count: '0'));
    homeLocationList
        .add(HomeLocationModel(location: 'Dibba Al-Fujairah', count: '0'));
    homeLocationList
        .add(HomeLocationModel(location: 'Dibba Al-Hisn', count: '0'));
    homeLocationList.add(HomeLocationModel(location: 'Dubai', count: '1'));
    homeLocationList.add(HomeLocationModel(location: 'Fujairah', count: '0'));
    homeLocationList.add(HomeLocationModel(location: 'Ghayathi', count: '0'));
    homeLocationList.add(HomeLocationModel(location: 'Hatta', count: '0'));
    homeLocationList.add(HomeLocationModel(location: 'Jebel Ali', count: '0'));
    homeLocationList.add(HomeLocationModel(location: 'Kalba', count: '0'));
    homeLocationList
        .add(HomeLocationModel(location: 'Khor Fakkan', count: '0'));
    homeLocationList.add(HomeLocationModel(location: 'Liwa Oasis', count: '0'));
    homeLocationList
        .add(HomeLocationModel(location: 'Madinat Zayed', count: '0'));
    homeLocationList
        .add(HomeLocationModel(location: 'Ras Al Khaimah', count: '0'));
    homeLocationList.add(HomeLocationModel(location: 'Ruwais', count: '0'));
    homeLocationList.add(HomeLocationModel(location: 'Sharjah', count: '0'));
    homeLocationList
        .add(HomeLocationModel(location: 'Umm al-Quwain', count: '0'));
  }
}

class FreeClassified extends StatelessWidget {
  const FreeClassified({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: colorBackground),
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Your FREE Classified app',
            style: GoogleFonts.poppins(
              color: colorOrange,
              fontWeight: FontWeight.w500,
            ),
          ),
          height3,
          Text(
            'The Most Poweful Search app in the Market',
            style: GoogleFonts.poppins(
              color: colorBlack,
              fontWeight: FontWeight.bold,
            ),
          ),
          height25,
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 250,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: colorWhite,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/svg/shop.svg',
                        width: 30,
                        height: 30,
                      ),
                      height20,
                      Text(
                        'Search Anything you are looking for',
                        softWrap: true,
                        style: GoogleFonts.poppins(fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                      height5,
                      Text(
                        'Leverage agile framework to provide a robust high level synopsys overviews',
                        style:
                            GoogleFonts.poppins(color: colorGrey, fontSize: 12),
                        softWrap: true,
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
                width15,
                Container(
                  width: 250,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: colorWhite,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/svg/cards.svg',
                        width: 30,
                        height: 30,
                      ),
                      height20,
                      Text(
                        'Find your ads with precise location',
                        softWrap: true,
                        style: GoogleFonts.poppins(fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                      height5,
                      Text(
                        'Bring to the table survival strategies to ensure proactive domination',
                        style:
                            GoogleFonts.poppins(color: colorGrey, fontSize: 12),
                        softWrap: true,
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
                width15,
                Container(
                  width: 250,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: colorWhite,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/svg/favorite-chart.svg',
                        width: 30,
                        height: 30,
                      ),
                      height20,
                      Text(
                        'Explore from the best available ads',
                        softWrap: true,
                        style: GoogleFonts.poppins(fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                      height5,
                      Text(
                        'Grow the holistic world view of disruptive innovation workspace',
                        style:
                            GoogleFonts.poppins(color: colorGrey, fontSize: 12),
                        softWrap: true,
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          height10,
        ],
      ),
    );
  }
}

class LookingForJob extends StatelessWidget {
  const LookingForJob({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      clipBehavior: Clip.hardEdge,
      borderRadius: BorderRadius.circular(5),
      color: colorWhite,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              'assets/svg/looking_for_job.svg',
              width: 150,
              height: 100,
            ),
            width10,
            Expanded(
              child: Column(
                children: [
                  Text(
                    'Are you looking for Trending Jobs?',
                    style: GoogleFonts.poppins(
                        color: colorBlack,
                        fontSize: 14,
                        fontWeight: FontWeight.w700),
                  ),
                  height4,
                  Text(
                    'Need help figuring out what to do with your future?',
                    style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: colorGrey,
                        fontWeight: FontWeight.normal),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LocationCategories extends StatelessWidget {
  const LocationCategories({
    super.key,
    required this.homeLocationList,
  });

  final List<HomeLocationModel> homeLocationList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, index) {
            return Container(
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              clipBehavior: Clip.hardEdge,
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/dubai.jpg',
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(.6),
                            blurRadius: 30.0,
                            spreadRadius: 30.0,
                            offset: Offset(
                              0,
                              120,
                            )),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          homeLocationList[index].location,
                          style: GoogleFonts.poppins(
                            color: colorWhite,
                          ),
                        ),
                        Text(
                          homeLocationList[index].count,
                          style: GoogleFonts.poppins(color: colorWhite),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (ctx, index) {
            return width15;
          },
          itemCount: homeLocationList.length),
    );
  }
}

class MainCategories extends StatelessWidget {
  const MainCategories({
    super.key,
    required this.homeCategoryList,
  });

  final List<HomeCategoryModel> homeCategoryList;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      mainAxisSpacing: 7,
      crossAxisSpacing: 7,
      shrinkWrap: true,
      childAspectRatio: 1,
      physics: NeverScrollableScrollPhysics(),
      children: List.generate(homeCategoryList.length, (index) {
        return Material(
          elevation: 0,
          borderRadius: BorderRadius.circular(10),
          clipBehavior: Clip.hardEdge,
          color: colorWhite,
          child: InkWell(
            onTap: () {},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.network(
                  homeCategoryList[index].url,
                  color: colorBlue,
                  width: 40,
                  height: 40,
                ),
                Text(
                  homeCategoryList[index].title,
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: colorBlack,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
