import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rahala/screens/hotel_screen.dart';
import 'package:rahala/screens/ticket_screen_view.dart';
import 'package:rahala/uintes/app_info_hotel&tickets.dart';
import 'package:rahala/uintes/app_style.dart';
import 'package:rahala/widgets/app_textbar_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(children: [
        SafeArea(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Gap(40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Good Morning',
                            style: Styles.headLine_Style_3,
                          ),
                          Gap(5),
                          Text('Book Tickets', style: Styles.headLine_Style_1),
                        ],
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage('assets/images/img_1.jpg'),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ],
                  ),
                  Gap(25),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0xfff4f6fd),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                    child: Row(
                      children: [
                        Icon(
                          FluentSystemIcons.ic_fluent_search_regular,
                          color: Color(0xffbfc205),
                        ),
                        Text(
                          'Search',
                          style: Styles.headLine_Style_4,
                        ),
                      ],
                    ),
                  ),
                  Gap(25),
                  //Upcoming Now
                  AppTextBarMain(
                    bigText: 'Upcoming Flights',
                    smallText: 'View all',
                  ),
                  Gap(15),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(left: 20),
                    child: Row(
                        children: ticketList
                            .map(
                              (e) => TicketScreen_View(
                                  ticketList: e,
                                  isColor: false,
                                  isColorColumn: false),
                            )
                            .toList()),
                  ),
                  Gap(15),
                  //Hotels
                  AppTextBarMain(
                    bigText: 'Hotels',
                    smallText: 'View all',
                  ),
                  Gap(15),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(left: 20),
                    child: Row(
                      children: HotelsInfo.map((e) => HotelsScreen(hotel: e))
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
