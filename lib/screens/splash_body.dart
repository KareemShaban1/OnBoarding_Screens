import 'package:flutter/material.dart';
import 'package:onboarding_screens2/configrations/configuration.dart';
import 'package:onboarding_screens2/configrations/constants.dart';
import 'package:onboarding_screens2/data/data.dart';
import 'package:onboarding_screens2/screens/splash_content.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        width: double.infinity,
        child: Column(
          children: <Widget>[

            SizedBox(height: 40,),


            Expanded(
              flex: 5,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  head: splashData[index]["head"],
                  image: splashData[index]["image"],
                  text: splashData[index]['text'],
                ),
              ),
            ),

            SizedBox(height: 20,),

            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
                child: Column(

                  children: <Widget>[

                    SizedBox(height: 30,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                            (index) => buildDot(index: index),
                      ),
                    ),


                    SizedBox(height: 50,),

                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [

                       Text('Skip',
                       style: TextStyle(
                         color: bodyColor,
                         fontSize: 16
                       ),),

                       Container(
                         height: 50,
                         width: 50,
                         decoration: BoxDecoration(
                             color: rightButton,
                             borderRadius: BorderRadius.circular(20),
                             // border: Border.all(color: Color.fromRGBO(141, 141, 141, 1.0).withAlpha(50), width: 1)),
                           boxShadow: [
                             BoxShadow(
                               color: rightButton.withOpacity(0.3),
                               spreadRadius: 5,
                               blurRadius: 7,
                               offset: Offset(0, 3), // changes position of shadow
                             ),
                           ],
                         ),
                         child: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                       ),
                     ],
                   ),


                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 7),
      height: 3,
      width: currentPage == index ? 30 : 15,
      decoration: BoxDecoration(
        color: currentPage == index ? dotColor : notDotColor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }

}