import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
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
            FittedBox(
              child: Container(
                padding: EdgeInsets.all(3.5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    AppLayout.getHeight(50),
                  ),
                  color: Color(0xfff4f6fd),
                ),
                child: Row(
                  children: [
                    Container(
                        padding: EdgeInsets.symmetric(
                          vertical: AppLayout.getHeight(7),
                        ),
                        width: size.width * 0.44,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(
                                AppLayout.getHeight(50),
                              ),
                              bottomLeft: Radius.circular(
                                AppLayout.getHeight(50),
                              ),
                            ),
                            color: Colors.white),
                        child: Center(
                          child: Text(
                            'Airline Ticketes',
                          ),
                        )),
                    Container(
                        padding: EdgeInsets.symmetric(
                          vertical: AppLayout.getHeight(7),
                        ),
                        width: size.width * 0.44,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(
                                AppLayout.getHeight(50),
                              ),
                              bottomRight: Radius.circular(
                                AppLayout.getHeight(50),
                              ),
                            ),
                            color: Colors.transparent),
                        child: Center(child: Text('Hotels'))),
                  ],
                ),
              ),
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
              children: [
                Container(
                  width: size.width * 0.44,
                  height: 450,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(25))),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: AppLayout.getHeight(10)),
                        width: size.width * 0.40,
                        height: 250,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(25)),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/hotel_3_ .jpg'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
