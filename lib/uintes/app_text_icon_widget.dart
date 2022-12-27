import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rahala/uintes/app_layout.dart';
import 'package:rahala/uintes/app_style.dart';

class AppTextIcon extends StatelessWidget {
  final IconData icon;
  final String text;

  const AppTextIcon({required this.icon, required this.text}) : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(12), vertical: AppLayout.getWidth(12)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          AppLayout.getHeight(10),
        ),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: Color(0xffbfc2df),
          ),
          Gap(AppLayout.getWidth(10)),
          Text(
            text,
            style: Styles.text_Style,
          )
        ],
      ),
    );
  }
}
