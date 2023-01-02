import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rahala/uintes/app_layout.dart';
import 'package:rahala/uintes/app_style.dart';

class AppColumnLayout extends StatelessWidget {
  final String firstText;
  final String secondText;
  final CrossAxisAlignment alignment;
  final bool isColorColumn;

  const AppColumnLayout(
      {Key? key,
      required this.firstText,
      required this.secondText,
      required this.alignment,
      required this.isColorColumn})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          firstText,
          style: Styles.headLine_Style_3.copyWith(
              color: isColorColumn == false || isColorColumn == null
                  ? Colors.white
                  : Colors.black),
        ),
        Gap(AppLayout.getHeight(5)),
        Text(
          secondText,
          style: Styles.headLine_Style_4.copyWith(
              color: isColorColumn == false || isColorColumn == null
                  ? Colors.white
                  : Colors.grey.shade500),
        ),
      ],
    );
  }
}
