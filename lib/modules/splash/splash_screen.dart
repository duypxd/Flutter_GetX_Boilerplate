import 'package:flutter/material.dart';
import 'package:getx_boilerplate/shared/shared.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.hourglass_bottom,
            color: ColorConstants.darkGray,
            size: 30.0,
          ),
          const Text(
            'loading...',
            style: TextStyle(fontSize: 30.0),
          ),
        ],
      ),
    );
  }
}
