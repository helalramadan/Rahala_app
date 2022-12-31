import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rahala/screens/ticket_screen_view.dart';
import 'package:rahala/uintes/app_bat_tap.dart';
import 'package:rahala/uintes/app_info_hotel&tickets.dart';
import 'package:rahala/uintes/app_layout.dart';
import 'package:rahala/uintes/app_style.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(
              AppLayout.getHeight(20),
            ),
            child: ListView(
              children: [
                Gap(
                  AppLayout.getHeight(40),
                ),
                Text(
                  'Ticket',
                  style: Styles.headLine_Style_1.copyWith(
                    fontSize: AppLayout.getWidth(35),
                  ),
                ),
                Gap(
                  AppLayout.getHeight(20),
                ),
                AppBarTap(
                  text1: 'Upconing',
                  text2: 'Previuos',
                ),
                Gap(
                  AppLayout.getHeight(20),
                ),
                //ticket box screen view
                Container(
                  padding: EdgeInsets.only(left: AppLayout.getHeight(14.7)),
                  child: TicketScreen_View(
                      ticketList: ticketList[0], isColor: true),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                  child: Container(
                    margin: EdgeInsets.only(right: AppLayout.getHeight(1)),
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getHeight(12)),
                    color: Colors.white,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Flutter DB',
                                  style: Styles.headLine_Style_3,
                                ),
                                Gap(AppLayout.getHeight(5)),
                                Text(
                                  'Passenger',
                                  style: Styles.headLine_Style_3,
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
