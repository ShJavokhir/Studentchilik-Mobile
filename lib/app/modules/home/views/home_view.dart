import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:studentchilik/app/data/constants/colors.dart';
import 'package:studentchilik/app/data/constants/constants.dart';
import 'package:sizer/sizer.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Dashboard'),
          systemOverlayStyle: SystemUiOverlayStyle(
            // Status bar color
            systemNavigationBarDividerColor: AppColors.backgroundColor,
            statusBarColor: AppColors.backgroundColor,
            systemNavigationBarColor: AppColors.backgroundColor,
            // Status bar brightness (optional)
            statusBarIconBrightness:
                Brightness.light, // For Android (dark icons)
            statusBarBrightness: Brightness.dark, // For iOS (dark icons)
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: 70,
          decoration: BoxDecoration(
              color: AppColors.onBackgroundColor,
              boxShadow: <BoxShadow>[
                new BoxShadow(
                  color: AppColors.backgroundColor,
                  blurRadius: 30.0,
                  spreadRadius: 2,
                  offset: new Offset(0.0, 0),
                ),
              ],
              borderRadius: BorderRadius.circular(100)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              new SvgPicture.asset(
                'assets/images/home.svg',
                color: AppColors.textColor,
                width: 20.sp,
                height: 20.sp,
              ),
              new SvgPicture.asset(
                'assets/images/shopping-cart.svg',
                color: AppColors.textColor,
                width: 20.sp,
                height: 20.sp,
              ),
              Container(
                width: 50,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.primaryColor,
                  boxShadow: <BoxShadow>[
                    new BoxShadow(
                      color: AppColors.primaryColor.withOpacity(0.8),
                      blurRadius: 20.0,
                      spreadRadius: 0.1,
                      offset: new Offset(0.0, 0),
                    ),
                  ],
                ),
                child: Icon(
                  Icons.add_rounded,
                  color: AppColors.onBackgroundColor,
                  size: 30.sp,
                ),
              ),
              new SvgPicture.asset(
                'assets/images/calculator.svg',
                color: AppColors.textColor,
                width: 20.sp,
                height: 20.sp,
              ),
              new SvgPicture.asset(
                'assets/images/user.svg',
                color: AppColors.textColor,
                width: 20.sp,
                height: 20.sp,
              ),
            ],
          ),
        ),
        body: Container(
          child: ListView(
            physics:
                AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
            children: [
              SizedBox(
                height: 18,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: Constants.DEFAULT_PADDING),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 90,
                        decoration: BoxDecoration(
                          color: AppColors.onBackgroundColor,
                          borderRadius:
                              BorderRadius.circular(Constants.DEFAULT_RADIUS),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 20,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: AppColors.green,
                                boxShadow: <BoxShadow>[
                                  new BoxShadow(
                                    color: AppColors.green.withOpacity(0.5),
                                    blurRadius: 50.0,
                                    spreadRadius: 5,
                                    offset: new Offset(0.0, 0),
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(
                                    Constants.DEFAULT_RADIUS),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Olishingiz kerak:",
                                  style: TextStyle(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.bold,
                                      color:
                                          AppColors.textColor.withOpacity(0.7)),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 5),
                                  child: Row(
                                    children: [
                                      Text(
                                        '1 127 000',
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text('uzs',
                                          style: TextStyle(
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.bold,
                                              color: AppColors.textColor
                                                  .withOpacity(0.7))),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    Expanded(
                      child: Container(
                        height: 90,
                        decoration: BoxDecoration(
                          color: AppColors.onBackgroundColor,
                          borderRadius:
                              BorderRadius.circular(Constants.DEFAULT_RADIUS),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 20,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: AppColors.red,
                                boxShadow: <BoxShadow>[
                                  new BoxShadow(
                                    color: AppColors.red.withOpacity(0.5),
                                    blurRadius: 50.0,
                                    spreadRadius: 5,
                                    offset: new Offset(0.0, 0),
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(
                                    Constants.DEFAULT_RADIUS),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Olishingiz kerak:",
                                  style: TextStyle(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.bold,
                                      color:
                                          AppColors.textColor.withOpacity(0.7)),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 5),
                                  child: Row(
                                    children: [
                                      Text(
                                        '350 000',
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text('uzs',
                                          style: TextStyle(
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.bold,
                                              color: AppColors.textColor
                                                  .withOpacity(0.7))),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Constants.DEFAULT_PADDING + 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Xonadonning haftalik harajatlari",
                        style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.bold,
                            color: AppColors.textColor.withOpacity(0.7))),
                    Icon(Icons.arrow_right_rounded,
                        size: 30.sp,
                        color: AppColors.textColor.withOpacity(0.7))
                  ],
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: Constants.DEFAULT_PADDING),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 18),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: AppColors.onBackgroundColor,
                    borderRadius:
                        BorderRadius.circular(Constants.DEFAULT_RADIUS),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.arrow_downward_rounded,
                            color: AppColors.red,
                            size: 20.sp,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "O'tgan haftaga nisbatan",
                            style: TextStyle(fontSize: 12.sp),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "25 %",
                            style: TextStyle(
                                fontSize: 12.sp, color: AppColors.red),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "kamaygan",
                            style: TextStyle(fontSize: 12.sp),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Container(
                        width: double.infinity,
                        height: 200,
                        child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                ...[
                                  ['D', 50],
                                  ['S', 20],
                                  ['Ch', 60],
                                  ['P', 30],
                                  ['J', 70],
                                  ['Sh', 90],
                                  ['Y', 25]
                                ]
                                    .map((e) => Container(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                child: LayoutBuilder(builder:
                                                    (BuildContext context,
                                                        BoxConstraints
                                                            constraints) {
                                                  return Stack(
                                                    children: [
                                                      Container(
                                                        width: 20,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: AppColors
                                                              .backgroundColor,
                                                          borderRadius: BorderRadius
                                                              .circular(Constants
                                                                  .DEFAULT_RADIUS),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        bottom: 0,
                                                        child:
                                                            AnimatedContainer(
                                                          duration: Duration(
                                                              milliseconds:
                                                                  300),
                                                          width: 20,
                                                          height: constraints
                                                                  .maxHeight *
                                                              int.parse(e[1]
                                                                  .toString()) /
                                                              100,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: AppColors
                                                                .primaryColor,
                                                            boxShadow: <
                                                                BoxShadow>[
                                                              new BoxShadow(
                                                                color: AppColors
                                                                    .primaryColor
                                                                    .withOpacity(
                                                                        0.5),
                                                                blurRadius:
                                                                    20.0,
                                                                spreadRadius:
                                                                    1.5,
                                                                offset:
                                                                    new Offset(
                                                                        0.0, 0),
                                                              ),
                                                            ],
                                                            borderRadius: BorderRadius
                                                                .circular(Constants
                                                                    .DEFAULT_RADIUS),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  );
                                                }),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(e[0].toString())
                                            ],
                                          ),
                                        ))
                                    .toList()
                              ],
                            )),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Constants.DEFAULT_PADDING + 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Oxirgi harajatlar",
                        style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.bold,
                            color: AppColors.textColor.withOpacity(0.7))),
                    Icon(Icons.arrow_right_rounded,
                        size: 30.sp,
                        color: AppColors.textColor.withOpacity(0.7))
                  ],
                ),
              ),
              Visibility(
                visible: true,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: Constants.DEFAULT_PADDING),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: AppColors.onBackgroundColor,
                        borderRadius:
                            BorderRadius.circular(Constants.DEFAULT_RADIUS)),
                    child: Column(
                      children: [
                        homePageListItem(),
                        Divider(
                          height: 0,
                          color: AppColors.textColor.withOpacity(0.7),
                        ),
                        homePageListItem(),
                        Divider(
                          height: 0,
                          color: AppColors.textColor.withOpacity(0.7),
                        ),
                        homePageListItem(),
                        Divider(
                          height: 0,
                          color: AppColors.textColor.withOpacity(0.7),
                        ),
                        homePageListItem(),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

class homePageListItem extends StatelessWidget {
  const homePageListItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Olma",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                  )),
              SizedBox(
                height: 5,
              ),
              Text("Inoyat",
                  style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textColor.withOpacity(0.7)))
            ],
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("20 000 uzs",
                  style: TextStyle(
                    color: AppColors.red,
                    fontWeight: FontWeight.w800,
                  )),
              SizedBox(
                height: 5,
              ),
              Text("12 soat oldin",
                  style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textColor.withOpacity(0.7)))
            ],
          )
        ],
      ),
    );
  }
}
