import 'package:flutter/material.dart';
import 'package:onboarding_screens2/configrations/configuration.dart';
import 'package:onboarding_screens2/screens/splash_body.dart';


class SplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Body(),
      ),
    );
  }
}




