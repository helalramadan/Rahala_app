import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rahala/uintes/app_bat_tap.dart';
import 'package:rahala/uintes/app_layout.dart';
import 'package:rahala/uintes/app_style.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          Padding(
            padding: EdgeInsets.all(
              AppLayout.getHeight(20),),
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
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
