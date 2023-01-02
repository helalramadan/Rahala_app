import 'package:flutter/material.dart';
import 'package:rahala/uintes/app_layout.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  final bool? isColor;
  final int section;
  final double width;

  const AppLayoutBuilderWidget(
      {Key? key, this.isColor, required this.section, this.width = 3})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext, BoxConstraints constrain) {
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(
              (constrain.constrainWidth() / section).floor(),
              (index) => Container(
                    width: AppLayout.getHeight(width),
                    height: AppLayout.getHeight(2),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor == false || isColor == null
                            ? Colors.grey.shade300
                            : Colors.white,
                      ),
                    ),
                  )),
        );
      },
    );
  }
}
