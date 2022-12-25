import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rahala/uintes/app_layout.dart';
import 'package:rahala/uintes/app_style.dart';
import 'package:rahala/widgets/thickcontainer.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.85,
      height: 200,
      child: Container(
        margin: EdgeInsets.only(right: 16),
        child: Column(
          children: [
            /*
            show the blue part of the card/ticket
             */
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Styles.orangeColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'NYC',
                        style: Styles.headLine_Style_3
                            .copyWith(color: Colors.white),
                      ),
                      Spacer(),
                      ThickContainer(),
                      Expanded(
                        child: Stack(
                          children: [
                            Container(
                              height: 24,
                              child: LayoutBuilder(
                                builder:
                                    (BuildContext, BoxConstraints constrain) {
                                  return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                        (constrain.constrainWidth() / 6)
                                            .floor(),
                                        (index) => Container(
                                              width: 3,
                                              height: 2,
                                              child: DecoratedBox(
                                                decoration: BoxDecoration(
                                                    color: Colors.white),
                                              ),
                                            )),
                                  );
                                },
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(
                                  Icons.airplanemode_active_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      ThickContainer(),
                      Spacer(),
                      Text(
                        'LDN',
                        style: Styles.headLine_Style_3.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 100,
                        child: Text(
                          'New-York',
                          style: Styles.headLine_Style_4
                              .copyWith(color: Colors.white),
                        ),
                      ),
                      Text(
                        '8H 30M',
                        style: Styles.headLine_Style_4
                            .copyWith(color: Colors.white),
                      ),
                      Container(
                        width: 100,
                        child: Text(
                          'London',
                          textAlign: TextAlign.end,
                          style: Styles.headLine_Style_4
                              .copyWith(color: Colors.white),
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
              color: Colors.redAccent,
              child: Row(
                children: [
                  Container(
                    height: 20,
                    width: 10,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: LayoutBuilder(
                        builder: (BuildContext, BoxConstraints constrain) {
                          return Flex(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            direction: Axis.horizontal,
                            children: List.generate(
                                (constrain.constrainWidth() / 20).floor(),
                                (index) => Container(
                                      width: 5,
                                      height: 2,
                                      child: DecoratedBox(
                                          decoration: BoxDecoration(
                                              color: Colors.white)),
                                    )),
                          );
                        },
                      ),
                    ),
                  ),
                  Container(
                    height: 20,
                    width: 10,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
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
              padding:
                  EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 10),
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '1 MAY',
                            style: Styles.headLine_Style_4
                                .copyWith(color: Colors.white),
                          ),
                          Gap(5),
                          Text(
                            'Date',
                            style: Styles.headLine_Style_4
                                .copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '08:00 AM',
                            style: Styles.headLine_Style_4
                                .copyWith(color: Colors.white),
                          ),
                          Gap(5),
                          Text(
                            'Departure Time',
                            style: Styles.headLine_Style_4
                                .copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '23',
                            style: Styles.headLine_Style_4
                                .copyWith(color: Colors.white),
                          ),
                          Gap(5),
                          Text(
                            'Number',
                            style: Styles.headLine_Style_4
                                .copyWith(color: Colors.white),
                          ),
                        ],
                      ),
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
