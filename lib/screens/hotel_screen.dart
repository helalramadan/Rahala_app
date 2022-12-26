import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rahala/uintes/app_layout.dart';
import 'package:rahala/uintes/app_style.dart';

class HotelsScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;

  const HotelsScreen({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: AppLayout.getHeight(350),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade200, blurRadius: 20, spreadRadius: 2),
        ],
      ),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: EdgeInsets.only(
        right: AppLayout.getHeight(15),
        top: AppLayout.getHeight(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/${hotel["image"]}'),
              ),
            ),
          ),
          Gap(AppLayout.getHeight(10)),
          Text(
            '${hotel["place"]}',
            style: Styles.headLine_Style_2.copyWith(color: Styles.kakiColor),
          ),
          Gap(AppLayout.getHeight(5)),
          Text(
            '${hotel["destination"]}',
            style: Styles.headLine_Style_3.copyWith(color: Colors.white),
          ),
          Gap(AppLayout.getHeight(5)),
          Text(
            '\$${hotel["price"]}/night',
            style: Styles.headLine_Style_2.copyWith(color: Styles.kakiColor),
          ),
          Gap(AppLayout.getHeight(5)),
        ],
      ),
    );
  }
}
