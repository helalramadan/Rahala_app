import 'package:flutter/material.dart';
import 'package:rahala/uintes/app_layout.dart';

class AppBarTap extends StatelessWidget {
  final String text1;
  final String text2;

  const AppBarTap({Key? key, required this.text1, required this.text2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      padding: EdgeInsets.all(3.5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          AppLayout.getHeight(50),
        ),
        color: Color(0xfff4f6fd),
      ),
      child: Row(
        children: [
          FittedBox(
            child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: AppLayout.getHeight(7),
                ),
                width: size.width * 0.44,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                        AppLayout.getHeight(50),
                      ),
                      bottomLeft: Radius.circular(
                        AppLayout.getHeight(50),
                      ),
                    ),
                    color: Colors.white),
                child: Center(
                  child: Text(
                    text1,
                  ),
                )),
          ),
          Container(
              padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(7),
              ),
              width: size.width * 0.44,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(
                      AppLayout.getHeight(50),
                    ),
                    bottomRight: Radius.circular(
                      AppLayout.getHeight(50),
                    ),
                  ),
                  color: Colors.transparent),
              child: Center(child: Text(text2))),
        ],
      ),
    );
  }
}
