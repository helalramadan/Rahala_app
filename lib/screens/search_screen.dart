import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rahala/uintes/app_bat_tap.dart';
import 'package:rahala/uintes/app_layout.dart';
import 'package:rahala/uintes/app_style.dart';
import 'package:rahala/uintes/app_text_icon_widget.dart';
import 'package:rahala/uintes/app_textbar_widgets.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Padding(
        padding: EdgeInsets.all(
          AppLayout.getHeight(20),
        ),
        child: ListView(
          children: [
            Gap(
              AppLayout.getHeight(40),
            ),
            Text(
              'Whate Are\nYou Looking for?',
              style: Styles.headLine_Style_1.copyWith(
                fontSize: AppLayout.getWidth(35),
              ),
            ),
            Gap(
              AppLayout.getHeight(20),
            ),

            AppBarTap(
              text1: 'Airline Ticketes',
              text2: 'Hotels',
            ),
            Gap(
              AppLayout.getHeight(25),
            ),
            AppTextIcon(text: 'Departure', icon: Icons.flight_takeoff_rounded),
            Gap(
              AppLayout.getHeight(25),
            ),
            AppTextIcon(text: 'Arrival', icon: Icons.flight_land_rounded),
            Gap(AppLayout.getHeight(25)),
            Container(
              padding: EdgeInsets.symmetric(vertical: AppLayout.getWidth(7)),
              decoration: BoxDecoration(
                color: Color(0xd91130ce),
                borderRadius: BorderRadius.circular(
                  AppLayout.getHeight(10),
                ),
              ),
              child: MaterialButton(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Find Tickets',
                    style: Styles.text_Style.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
                onPressed: () {},
              ),
            ),
            Gap(AppLayout.getHeight(40)),
            AppTextBarMain(
              bigText: 'Upcoming Flights',
              smallText: 'View all',
            ),
            Gap(AppLayout.getHeight(10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(15)),
                  width: size.width * 0.42,
                  height: AppLayout.getHeight(400),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      AppLayout.getHeight(25),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 1,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: AppLayout.getHeight(190),
                        decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(25)),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/hotel_3_ .jpg'),
                          ),
                        ),
                      ),
                      Gap(
                        AppLayout.getHeight(15),
                      ),
                      Text(
                        '20% discount on the early booking of this flight , Don`t  miss out this chance',
                        style: Styles.headLine_Style_2
                            .copyWith(letterSpacing: 1.5),
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: size.width * 0.44,
                          height: AppLayout.getHeight(174),
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(25)),
                            color: Color(0xff3ab8b8),
                          ),
                          padding: EdgeInsets.all(AppLayout.getHeight(15)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Discount\nfor survev',
                                style: Styles.headLine_Style_2.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Gap(AppLayout.getHeight(10)),
                              Text(
                                'Take the survev about our services and get discount',
                                style: Styles.headLine_Style_2.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: -45,
                          right: -40,
                          child: Container(
                            padding: EdgeInsets.all(AppLayout.getHeight(30)),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 18, color: Color(0xff189999))),
                          ),
                        )
                      ],
                    ),
                    Gap(AppLayout.getHeight(10)),
                    Container(
                      width: size.width * 0.44,
                      height: AppLayout.getHeight(210),
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(25)),
                        color: Color(0xffec6545),
                      ),
                      padding: EdgeInsets.all(AppLayout.getHeight(15)),
                      child: Column(
                        children: [
                          Text(
                            'Take Love',
                            style: Styles.headLine_Style_2.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Gap(AppLayout.getHeight(10)),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: '😍',
                                  style: TextStyle(fontSize: 38),
                                ),
                                TextSpan(
                                  text: '🥰',
                                  style: TextStyle(fontSize: 50),
                                ),
                                TextSpan(
                                  text: '😘',
                                  style: TextStyle(fontSize: 38),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
