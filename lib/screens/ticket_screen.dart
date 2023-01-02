import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rahala/screens/ticket_screen_view.dart';
import 'package:rahala/uintes/app_info_hotel&tickets.dart';
import 'package:rahala/uintes/app_layout.dart';
import 'package:rahala/uintes/app_style.dart';
import 'package:rahala/widgets/app_bat_tap.dart';
import 'package:rahala/widgets/app_column_layout.dart';
import 'package:rahala/widgets/app_layout_builder_widget.dart';

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
                    ticketList: ticketList[0],
                    isColorColumn: true,
                    isColor: true,
                  ),
                ),
                SizedBox(height: 1),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(15),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(right: AppLayout.getHeight(1)),
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getHeight(12),
                        vertical: AppLayout.getHeight(20)),
                    color: Colors.white,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppColumnLayout(
                                isColorColumn: true,
                                alignment: CrossAxisAlignment.start,
                                firstText: 'Flutter DB',
                                secondText: 'Passenger'),
                            AppColumnLayout(
                                isColorColumn: true,
                                alignment: CrossAxisAlignment.end,
                                firstText: '5221364869',
                                secondText: 'Passsport')
                          ],
                        ),
                        Gap(AppLayout.getHeight(15)),
                        AppLayoutBuilderWidget(
                          section: 20,
                          width: 5,
                        ),
                        Gap(AppLayout.getHeight(15)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppColumnLayout(
                                isColorColumn: true,
                                alignment: CrossAxisAlignment.start,
                                firstText: '005544477147',
                                secondText: 'Number of E-ticket'),
                            AppColumnLayout(
                                isColorColumn: true,
                                alignment: CrossAxisAlignment.end,
                                firstText: 'B2SG28',
                                secondText: 'Book code')
                          ],
                        ),
                        Gap(AppLayout.getHeight(15)),
                        AppLayoutBuilderWidget(
                          section: 20,
                          width: 5,
                        ),
                        Gap(AppLayout.getHeight(15)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/Visa_2021.png',
                                      scale: 15,
                                    ),
                                    Text(
                                      '*** 2465',
                                      style: Styles.headLine_Style_3,
                                    ),
                                  ],
                                ),
                                Gap(AppLayout.getHeight(5)),
                                Text(
                                  'Payment Method',
                                  style: Styles.headLine_Style_4,
                                ),
                              ],
                            ),
                            AppColumnLayout(
                                isColorColumn: true,
                                alignment: CrossAxisAlignment.end,
                                firstText: '\$253.99',
                                secondText: 'Price'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                /*
                bar Code
                 */
                SizedBox(height: 1),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(AppLayout.getHeight(15)),
                      bottomRight: Radius.circular(AppLayout.getHeight(15)),
                    ),
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.all(AppLayout.getHeight(15)),
                  margin: EdgeInsets.only(
                      right: AppLayout.getHeight(15.5),
                      left: AppLayout.getHeight(15.5)),
                  child: Container(
                    padding:
                    EdgeInsets.symmetric(vertical: AppLayout.getHeight(15)),
                    child: ClipRRect(
                      borderRadius:
                      BorderRadius.circular(AppLayout.getHeight(15)),
                      child: BarcodeWidget(
                        barcode: Barcode.code128(),
                        data: 'https://www.google.com.eg',
                        width: double.infinity,
                        height: AppLayout.getHeight(70),
                        color: Styles.textColor,
                        drawText: false,
                      ),
                    ),
                  ),
                ),
                Gap(AppLayout.getHeight(20)),
                Container(
                  padding: EdgeInsets.only(left: AppLayout.getHeight(14.7)),
                  child: TicketScreen_View(
                    ticketList: ticketList[0],
                    isColorColumn: false,
                    isColor: false,
                  ),
                ),
              ],
            ),
          ),
          /*
          * point out container
          */
          Positioned(
            top: AppLayout.getHeight(295),
            left: AppLayout.getHeight(19),
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textColor, width: 3)),
              padding: EdgeInsets.all(AppLayout.getHeight(3)),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            top: AppLayout.getHeight(295),
            right: AppLayout.getHeight(19),
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textColor, width: 3)),
              padding: EdgeInsets.all(AppLayout.getHeight(3)),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
