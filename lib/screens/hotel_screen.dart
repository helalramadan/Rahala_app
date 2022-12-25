import 'package:flutter/cupertino.dart';
import 'package:rahala/uintes/app_layout.dart';

class HotelsScreen extends StatelessWidget {
  const HotelsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: 350,
      child: Column(
        children: [
          Container(
            width: size.width * 0.4,
            height: 50,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/hotel_1_.jpg'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
