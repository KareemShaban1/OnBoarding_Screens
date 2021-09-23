import 'package:flutter/material.dart';
import 'package:onboarding_screens2/configrations/configuration.dart';
import 'package:onboarding_screens2/configrations/constants.dart';



class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    this.head,
    this.text,
    this.image,
  }) : super(key: key);
  final String head ,text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[

        Image.asset(
          image,
          height: getProportionateScreenHeight(365),
          width: getProportionateScreenWidth(490),
        ),

        Spacer(flex: 2),

        Text(
          head,
          textAlign: TextAlign.center,
          style: TextStyle(
          color: headColor,
          fontWeight: FontWeight.bold,
          fontSize: 25,
              wordSpacing: 2.0,
              letterSpacing: 2.0

        ),
        ),
        SizedBox(height: 10,),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: bodyColor,
              fontSize: 18,
              wordSpacing: 2.0,
            letterSpacing: 2.0,
            height: 1.5


          ),
        ),








      ],
    );
  }
}
