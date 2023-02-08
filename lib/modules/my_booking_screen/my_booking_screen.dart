import 'package:easy_parking/modules/layout_screen/cubit/app_cubit.dart';
import 'package:easy_parking/modules/layout_screen/cubit/app_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../barcode_screen/barcode_screen.dart';

class MyBookingScreen extends StatelessWidget {
  MyBookingScreen({super.key});
  var boardController = PageController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) => Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 30,
                    ),
                  ),
                  const SizedBox(
                    width: 75,
                  ),
                  const Text(
                    'My Booking',
                    style: TextStyle(
                      fontFamily: 'roboto',
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 2,
              width: double.infinity,
              color: Colors.black,
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Padding(
              padding: EdgeInsetsDirectional.only(start: 20.0),
              child: Text(
                'In Progress',
                style: TextStyle(
                  fontFamily: 'roboto',
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Stack(
                alignment: AlignmentDirectional.topEnd,
                children: [
                  GestureDetector(
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      elevation: 10.0,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                              start: 10.0,
                              end: 10.0,
                              top: 20.0,
                              bottom: 10,
                            ),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.location_pin,
                                  color: Color(0xff0057FF),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  'Urban parking',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'roboto',
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  'جراج 9 بالمعادى',
                                  style: TextStyle(
                                      fontSize: 20, fontFamily: 'roboto'),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsetsDirectional.symmetric(
                                              horizontal: 10.0),
                                      child: Row(
                                        children: const [
                                          Icon(Icons.date_range),
                                          Text(
                                            'Tue 05 Oct',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontFamily: 'roboto',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Text(
                                      '8:00 pm',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'roboto',
                                        color: Colors.grey,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 21.0,
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.only(
                                          top: 3),
                                      child: Container(
                                        height: 30.0,
                                        width: 200,
                                        decoration: const BoxDecoration(
                                          color: Color(0xff0057FF),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            'Extend time',
                                            style: TextStyle(
                                              fontFamily: 'roboto',
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.only(top: 4),
                                  child: Image(
                                    fit: BoxFit.cover,
                                    image: AssetImage('assets/images/car.png'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BarcodeScreen(),
                        ),
                      );
                    },
                  ),
                  GestureDetector(
                    onTap: ()
                    {

                    },
                    child: const Icon(
                      Icons.cancel_rounded,
                      color: Colors.red,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: GestureDetector(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Completed',
                          style: TextStyle(
                            color: AppCubit.get(context).color1,
                            fontSize: 25,
                            fontFamily: 'roboto',
                          ),
                        ),
                        Container(
                          height: 1,
                          width: 200,
                          color: AppCubit.get(context).color1,
                        ),
                      ],
                    ),
                    onTap: () {
                      AppCubit.get(context).changeColor(index: 0);
                      boardController.nextPage(
                        duration: const Duration(
                          milliseconds: 10,
                        ),
                        curve: Curves.linear,
                      );
                    },
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Cancelled',
                          style: TextStyle(
                            color: AppCubit.get(context).color2,
                            fontSize: 25,
                            fontFamily: 'roboto',
                          ),
                        ),
                        Container(
                          height: 1,
                          width: 200,
                          color: AppCubit.get(context).color2,
                        ),
                      ],
                    ),
                    onTap: () {
                      AppCubit.get(context).changeColor(index: 1);
                      boardController.nextPage(
                        duration: const Duration(
                          milliseconds: 10,
                        ),
                        curve: Curves.linear,
                      );
                    },
                  ),
                ),
              ],
            ),
            Expanded(
              child: PageView.builder(
                controller: boardController,
                onPageChanged: (int index) {
                  AppCubit.get(context).changeColor(index: index);
                },
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) => AppCubit.get(context).widget,
                itemCount: AppCubit.get(context).myBooking.length,
              ),
            ),
            const SizedBox(
              height: 70,
            ),
          ],
        ),
      ),
    );
  }
}
