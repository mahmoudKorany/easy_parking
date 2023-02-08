import 'package:easy_parking/modules/register_screen/RegisterScreen.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BoardingModel {
  final String image;
  final String title;
  final String body;

  BoardingModel({
    required this.body,
    required this.title,
    required this.image,
  });
}

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  List<BoardingModel> boarding = [
    BoardingModel(
      body:
          'In order to protect your car, you must log in with your phone number and car license',
      title: 'Hello my friend',
      image: 'assets/images/33.png',
    ),
    BoardingModel(
      body:
          'If you do not find a place to park with Easy Park, you will leave your car easily and safely without wasting time',
      title: 'Easy to park',
      image: 'assets/images/22.png',
    ),
  ];

  var boardController = PageController();

  bool isLast = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top:25),
                child: PageView.builder(
                  onPageChanged: (int index) {
                    if (index == boarding.length - 1) {
                      setState(() {
                        isLast = true;
                      });
                    } else {
                      setState(() {
                        isLast = false;
                      });
                    }
                  },
                  controller: boardController,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) =>
                      boardingItemBuilder(boarding[index]),
                  itemCount: boarding.length,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  SmoothPageIndicator(
                    controller: boardController,
                    count: boarding.length,
                    effect: const ExpandingDotsEffect(
                      dotColor: Colors.grey,
                      activeDotColor: Color(0xff0057FF),
                      dotHeight: 9.0,
                      dotWidth: 9.0,
                      expansionFactor: 3,
                      spacing: 4.0,
                    ),
                  ),
                  const Spacer(),
                  FloatingActionButton(
                    backgroundColor: const Color(0xff0057FF),
                    onPressed: () {
                      if (isLast)
                      {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>  RegisterScreen()));
                      } else {
                        boardController.nextPage(
                          duration: const Duration(
                            milliseconds: 750,
                          ),
                          curve: Curves.decelerate,
                        );
                      }
                    },
                    child: const Icon(Icons.arrow_forward_ios_rounded),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }

  Widget boardingItemBuilder(BoardingModel model) => Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Image(
                  width: double.infinity,
                  height: 400.0,
                  fit: BoxFit.fill,
                  image: AssetImage(model.image),
                ),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Text(
              model.title,
              style: const TextStyle(fontSize: 24, fontFamily: 'roboto',fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Text(
              model.body,
              style: const TextStyle(
                fontSize: 14,
                fontFamily: 'roboto',
                color: Colors.black54,
              ),
            ),
          ],
        ),
      );
}
