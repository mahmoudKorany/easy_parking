import 'package:flutter/material.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: const Center(
          child: Text(
            'Previous reservation',
            style: TextStyle(
              fontSize: 22.0,
              color: Colors.black,
              fontFamily: 'roboto',
            ),
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 1,
            width: double.infinity,
            color: Colors.black,
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'Most visited',
              style: TextStyle(color: Colors.black, fontSize: 20.0),
            ),
          ),
          GestureDetector(
            onTap: (){},
            child: Padding(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 20.0),
              child: Container(
                width: double.infinity,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.black,
                ),
                child: Row(
                  children: [
                    Image.asset('assets/images/car2.png'),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsetsDirectional.only(end: 10),
                          child: Text(
                            'شارع 9 بالمعادى',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'roboto',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.symmetric(
                              horizontal: 10.0),
                          child: Row(
                            children: const [
                              Text(
                                '40 KM',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'roboto',
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              Text(
                                '10 minutes',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'roboto',
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){},
            child: Padding(
              padding: const EdgeInsetsDirectional.all(20.0),
              child: Container(
                width: double.infinity,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Colors.black),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Image.asset('assets/images/car3.png'),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsetsDirectional.only(end: 10),
                          child: Text(
                            'أكتوبر الحى الأول',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'roboto',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.symmetric(
                              horizontal: 10.0),
                          child: Row(
                            children: const [
                              Text(
                                '40 KM',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'roboto',
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              Text(
                                '10 minutes',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'roboto',
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){},
            child: Padding(
              padding: const EdgeInsetsDirectional.only(
                start: 20.0,
                end: 20.0,
                top: 10.0,
                bottom: 10.0,
              ),
              child: Container(
                width: double.infinity,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Colors.black),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Image.asset('assets/images/car4.png'),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsetsDirectional.only(end: 10),
                          child: Text(
                            'الشيخ زايد',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'roboto',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.symmetric(
                              horizontal: 10.0),
                          child: Row(
                            children: const [
                              Text(
                                '40 KM',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'roboto',
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              Text(
                                '10 minutes',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'roboto',
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'Recent Place',
              style: TextStyle(color: Colors.black, fontSize: 20.0),
            ),
          ),
          GestureDetector(
            onTap: (){},
            child: Padding(
              padding: const EdgeInsetsDirectional.only(
                start: 20.0,
                end: 20.0,
                top: 10.0,
                bottom: 10.0,
              ),
              child: Container(
                width: double.infinity,
                height: 138,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Colors.black),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Image.asset('assets/images/car5.png'),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(end:10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            'أكتوبر الحى الأول',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'roboto',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            'الوقت المتبقي للوصول',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'roboto',
                              fontSize: 15,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.symmetric(
                                horizontal: 10.0),
                            child: Row(
                              children: const [
                                Text(
                                  '40 KM',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'roboto',
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  width: 20.0,
                                ),
                                Text(
                                  '10 minutes',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'roboto',
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Text(
                            'تاريخ الركنه',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'roboto',
                              fontSize: 15,
                            ),
                          ),
                          const Text(
                            'من 4:45 الى 7:00',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'roboto',
                              fontSize: 15,
                            ),
                          ),
                          const Text(
                            'تاريخ 14/1/2023',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'roboto',
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){},
            child: Padding(
              padding: const EdgeInsetsDirectional.only(
                start: 20.0,
                end: 20.0,
                top: 10.0,
                bottom: 10.0,
              ),
              child: Container(
                width: double.infinity,
                height: 138,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Colors.black),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Image.asset('assets/images/car6.png'),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(end:10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            'الشيخ زايد',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'roboto',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            'الوقت المتبقي للوصول',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'roboto',
                              fontSize: 15,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.symmetric(
                                horizontal: 10.0),
                            child: Row(
                              children: const [
                                Text(
                                  '40 KM',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'roboto',
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  width: 20.0,
                                ),
                                Text(
                                  '10 minutes',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'roboto',
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Text(
                            'تاريخ الركنه',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'roboto',
                              fontSize: 15,
                            ),
                          ),
                          const Text(
                            'من 4:45 الى 7:00',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'roboto',
                              fontSize: 15,
                            ),
                          ),
                          const Text(
                            'تاريخ 14/1/2023',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'roboto',
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
