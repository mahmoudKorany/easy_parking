import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class EnterAppScreen extends StatefulWidget {
  const EnterAppScreen({Key? key}) : super(key: key);

  @override
  State<EnterAppScreen> createState() => _EnterAppScreenState();
}

class _EnterAppScreenState extends State<EnterAppScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CarouselSlider(
            items: [
              Image.asset( 'assets/images/Android Large - 39 1.png' , fit: BoxFit.cover,width: double.infinity,) ,
              Image.asset( 'assets/images/Android Large - 40 1.png' , fit: BoxFit.cover,width: double.infinity) ,

            ],
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height ,
              viewportFraction: 1 ,
              autoPlayCurve: Curves.fastOutSlowIn ,
              autoPlayAnimationDuration: const Duration(milliseconds: 1) ,
              autoPlayInterval: const Duration(milliseconds: 1 ) ,
              initialPage: 0 ,
              reverse: false ,
              autoPlay: true ,
              scrollDirection: Axis.horizontal ,
            ),
          ),
        ],
      ),

    );
  }
}
