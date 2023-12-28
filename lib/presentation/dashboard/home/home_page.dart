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
  List<HomeCategoryModel> homeCompanyList = [];

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
                  FreeClassified(),
                  height60,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Top companies',
                        style: GoogleFonts.poppins(
                            color: colorBlack, fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.arrow_forward))
                    ],
                  ),
                  height3,
                  TopCompany(
                    homeCompanyList: homeCompanyList,
                  ),
                  height60,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Poplular in Properties',
                        style: GoogleFonts.poppins(
                            color: colorBlack, fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.arrow_forward))
                    ],
                  ),
                  height3,
                  PopularProperty(),
                  height25,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Poplular in Vechiles & Spares',
                        style: GoogleFonts.poppins(
                            color: colorBlack, fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.arrow_forward))
                    ],
                  ),
                  height3,
                  PopularProperty(),
                  height25,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Poplular in Furnitures',
                        style: GoogleFonts.poppins(
                            color: colorBlack, fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.arrow_forward))
                    ],
                  ),
                  height3,
                  PopularProperty(),
                  height25,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Poplular in Services',
                        style: GoogleFonts.poppins(
                            color: colorBlack, fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.arrow_forward))
                    ],
                  ),
                  height3,
                  PopularProperty()
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

    homeCompanyList.clear();
    homeCompanyList.add(HomeCategoryModel(
        title: 'Alot',
        url:
            'https://s3.ap-southeast-1.amazonaws.com/alot.ae/company_logos/a302e1e8-2137-4296-9b54-127fd9d24d8a/BnFowYIzHtkT.png'));
    homeCompanyList.add(HomeCategoryModel(
        title: 'SanchiConnect',
        url: 'https://alot.ae/assets/media/img/dubai.jpg'));
    homeCompanyList.add(HomeCategoryModel(
        title: 'Test Company',
        url:
            'https://s3.ap-southeast-1.amazonaws.com/alot.ae/company_logos/a7e0952e-60b0-4baa-9410-152ae07c9c8a/zvPgNTTHzXjl.png'));
    homeCompanyList.add(HomeCategoryModel(
        title: 'Alot',
        url:
            'https://s3.ap-southeast-1.amazonaws.com/alot.ae/company_logos/a302e1e8-2137-4296-9b54-127fd9d24d8a/BnFowYIzHtkT.png'));
    homeCompanyList.add(HomeCategoryModel(
        title: 'SanchiConnect',
        url: 'https://alot.ae/assets/media/img/dubai.jpg'));
    homeCompanyList.add(HomeCategoryModel(
        title: 'Test Company',
        url:
            'https://s3.ap-southeast-1.amazonaws.com/alot.ae/company_logos/a7e0952e-60b0-4baa-9410-152ae07c9c8a/zvPgNTTHzXjl.png'));
  }
}

class PopularProperty extends StatelessWidget {
  const PopularProperty({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, index) {
            return Row(
              children: [
                SizedBox(
                  width: 140,
                  height: 145,
                  child: Card(
                    elevation: 2,
                    shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: InkWell(
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(
                            'https://alot.ae/assets/media/img/dubai.jpg',
                            fit: BoxFit.fill,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'AED 33,999',
                                  style: GoogleFonts.poppins(
                                      color: colorRed,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13),
                                ),
                                Text(
                                  '1 Bed - 1 Bad',
                                  style: GoogleFonts.poppins(
                                      color: colorBlack,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 10),
                                  maxLines: 1,
                                ),
                                Text(
                                  'Farishta Azizi, Al Furjan, Dubai',
                                  style: GoogleFonts.poppins(
                                      color: colorGrey,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 9),
                                  maxLines: 1,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                index == 9
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RawMaterialButton(
                            onPressed: () {},
                            elevation: 2.0,
                            fillColor: colorWhite,
                            padding: EdgeInsets.all(7.0),
                            shape: CircleBorder(),
                            child: Icon(
                              Icons.arrow_forward,
                            ),
                          ),
                          height4,
                          Text(
                            'View All',
                            style: GoogleFonts.poppins(
                                color: colorBlack, fontSize: 10),
                          )
                        ],
                      )
                    : Container()
              ],
            );
          },
          separatorBuilder: (ctx, index) {
            return width10;
          },
          itemCount: 10),
    );
  }
}

class TopCompany extends StatelessWidget {
  const TopCompany({
    super.key,
    required this.homeCompanyList,
  });

  final List<HomeCategoryModel> homeCompanyList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, index) {
            return Column(
              children: [
                SizedBox(
                  width: 100,
                  height: 100,
                  child: Card(
                    shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    clipBehavior: Clip.hardEdge,
                    child: Image.network(
                      homeCompanyList[index].url,
                      width: 100,
                      height: 100,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                height5,
                Text(
                  homeCompanyList[index].title,
                  style: GoogleFonts.poppins(),
                )
              ],
            );
          },
          separatorBuilder: (ctx, index) => width15,
          itemCount: homeCompanyList.length),
    );
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
          separatorBuilder: (ctx, index) => width15,
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
