import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:rahala/uintes/app_layout.dart';
import 'package:rahala/uintes/app_style.dart';
import 'package:rahala/widgets/app_column_layout.dart';
import 'package:rahala/widgets/app_layout_builder_widget.dart';
import 'package:rahala/widgets/thickcontainer.dart';

class TicketScreen_View extends StatelessWidget {
  final Map<String, dynamic> ticketList;
  final bool isColor;

  const TicketScreen_View({
    Key? key,
    required this.ticketList,
    required this.isColor,
  }) : super(key: key);

  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.85,
      height: AppLayout.getHeight(GetPlatform.isAndroid == true ? 168 : 162),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /*
            show the blue part of the card/ticket
             */
            Container(
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              decoration: BoxDecoration(
                color: isColor == false || isColor == null
                    ? Styles.orangeColor
                    : Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppLayout.getHeight(15)),
                  topRight: Radius.circular(AppLayout.getHeight(15)),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        '${ticketList['from']['code']}',
                        style: Styles.headLine_Style_3.copyWith(
                            color: isColor == false || isColor == null
                                ? Colors.white
                                : Colors.black),
                      ),
                      Spacer(),
                      isColor == false || isColor == null
                          ? ThickContainer()
                          : ThickContainer_1(),
                      Expanded(
                        child: Stack(
                          children: [
                            Container(
                              height: 24,
                              child: AppLayoutBuilderWidget(section: 6),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(
                                  Icons.airplanemode_active_rounded,
                                  color: isColor == false || isColor == null
                                      ? Colors.white
                                      : Color(0xff8accf7),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      isColor == false || isColor == null
                          ? ThickContainer()
                          : ThickContainer_1(),
                      Spacer(),
                      Text(
                        '${ticketList['to']['code']}',
                        style: Styles.headLine_Style_3.copyWith(
                          color: isColor == false || isColor == null
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(3)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          '${ticketList['from']['name']}',
                          style: Styles.headLine_Style_4.copyWith(
                              color: isColor == false || isColor == null
                                  ? Colors.white
                                  : Colors.grey.shade500),
                        ),
                      ),
                      Text(
                        '${ticketList['fly_time']}',
                        style: Styles.headLine_Style_4.copyWith(
                            color: isColor == false || isColor == null
                                ? Colors.white
                                : Colors.black),
                      ),
                      Container(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          '${ticketList['to']['name']}',
                          textAlign: TextAlign.end,
                          style: Styles.headLine_Style_4.copyWith(
                              color: isColor == false || isColor == null
                                  ? Colors.white
                                  : Colors.grey.shade500),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            /*
            show the orange part of the card/ticket
             */
            Container(
              color: isColor == false || isColor == null
                  ? Colors.redAccent
                  : Colors.white,
              child: Row(
                children: [
                  Container(
                    height: 20,
                    width: 10,
                    padding: EdgeInsets.all(AppLayout.getHeight(16)),
                    decoration: BoxDecoration(
                      color: isColor == false || isColor == null
                          ? Colors.grey.shade500
                          : Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(AppLayout.getHeight(15)),
                        bottomRight: Radius.circular(AppLayout.getHeight(15)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: AppLayoutBuilderWidget(
                        section: 20,
                        width: 5,
                      ),
                    ),
                  ),
                  Container(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    padding: EdgeInsets.all(AppLayout.getHeight(16)),
                    decoration: BoxDecoration(
                      color: isColor == false || isColor == null
                          ? Colors.grey.shade500
                          : Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(AppLayout.getHeight(15)),
                        bottomLeft: Radius.circular(AppLayout.getHeight(15)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            /*
            show the red part of the card/ticket
             */
            Container(
              padding: EdgeInsets.only(
                left: AppLayout.getHeight(16),
                right: AppLayout.getHeight(16),
                bottom: AppLayout.getHeight(16),
                top: AppLayout.getHeight(10),
              ),
              decoration: BoxDecoration(
                color: isColor == false || isColor == null
                    ? Colors.redAccent
                    : Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(AppLayout.getHeight(
                      isColor == null || isColor == false ? 15 : 0)),
                  bottomRight: Radius.circular(AppLayout.getHeight(
                      isColor == null || isColor == false ? 15 : 0)),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                          firstText: '${ticketList['date']}',
                          secondText: 'Date',
                          alignment: CrossAxisAlignment.start,
                          isColor: isColor),
                      AppColumnLayout(
                        firstText: '${ticketList['departure_time']}',
                        isColor: isColor,
                        alignment: CrossAxisAlignment.center,
                        secondText: 'Departure Time',
                      ),
                      AppColumnLayout(
                          firstText: '${ticketList['number']}',
                          secondText: 'Number',
                          alignment: CrossAxisAlignment.end,
                          isColor: isColor),
                    ],
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
