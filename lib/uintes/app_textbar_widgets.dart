import 'package:flutter/material.dart';
import 'package:rahala/uintes/app_style.dart';

class AppTextBarMain extends StatelessWidget {
  final String bigText;
  final String smallText;

  const AppTextBarMain(
      {Key? key, required this.bigText, required this.smallText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: Styles.headLine_Style_2,
        ),
        GestureDetector(
          onTap: () {
            print('_____his clicked from home screen upcoming sections_____');
          },
          child: Text(
            smallText,
            style: Styles.text_Style,
          ),
        ),
      ],
    );
  }
}
