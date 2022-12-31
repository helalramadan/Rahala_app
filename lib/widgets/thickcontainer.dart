import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThickContainer extends StatelessWidget {


  const ThickContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
            width: 2.5,
            color:
            Colors.white
        ),
      ),
    );
  }
}

class ThickContainer_1 extends StatelessWidget {


  const ThickContainer_1({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
            width: 2.5,
            color:
            Color(0xff8accf7)),
      ),
    );
  }
}
