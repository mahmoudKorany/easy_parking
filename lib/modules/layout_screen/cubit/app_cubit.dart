import 'package:easy_parking/modules/barcode_screen/barcode_screen.dart';
import 'package:easy_parking/modules/filter_screen/filter_screen.dart';
import 'package:easy_parking/modules/location_screen/location_screen.dart';
import 'package:easy_parking/modules/my_booking_screen/my_booking_screen.dart';
import 'package:easy_parking/modules/profile_screen/ProfileScreen.dart';
import 'package:easy_parking/modules/search_screen/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../home/home_screen.dart';
import 'app_states.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);
  int x = 0;
  List<Widget> myBooking = [
    ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(20),
        child: SizedBox(
          width: double.infinity,
          child: GestureDetector(
            child: Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              elevation: 10.0,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
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
                          style: TextStyle(fontSize: 20, fontFamily: 'roboto'),
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
                              padding: const EdgeInsetsDirectional.symmetric(
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
                              padding: const EdgeInsetsDirectional.only(top: 3),
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
            onTap: ()
            {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BarcodeScreen(),
                ),
              );
            },
          ),
        ),
      ),
      itemCount: 3,
    ),
    ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(20),
        child: SizedBox(
          width: double.infinity,
          child: GestureDetector(
            child: Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              elevation: 10.0,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
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
                          style: TextStyle(fontSize: 20, fontFamily: 'roboto'),
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
                              padding: const EdgeInsetsDirectional.symmetric(
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
                              padding: const EdgeInsetsDirectional.only(top: 3),
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
            onTap: ()
            {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BarcodeScreen(),
                ),
              );
            },
          ),
        ),
      ),
      itemCount: 5,
    ),
  ];
  Color color1 = const Color(0xff0057FF);
  Color color2 = Colors.black;
  Widget widget = ListView.builder(
    physics: const BouncingScrollPhysics(),
    itemBuilder: (context, index) => Padding(
      padding: const EdgeInsets.all(20),
      child: SizedBox(
        width: double.infinity,
        child: GestureDetector(
          child: Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            elevation: 10.0,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
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
                        style: TextStyle(fontSize: 20, fontFamily: 'roboto'),
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
                            padding: const EdgeInsetsDirectional.symmetric(
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
                            padding: const EdgeInsetsDirectional.only(top: 3),
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
          onTap: ()
          {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const BarcodeScreen(),
              ),
            );
          },
        ),
      ),
    ),
    itemCount: 3,
  );
  List<Widget> screens =
  [
    const HomeScreen(),
    MyBookingScreen(),
    const LocationScreen(),
    const ProfileScreen(),
    const FilterScreen(),
    const SearchScreen(),
  ];

  void changeColor({
    required int index,
  }) {
    if (index == 0) {
      color1 = const Color(0xff0057FF);
      color2 = Colors.black;
      widget = myBooking[index];
      emit(ChangeColor1());
    } else {
      color2 = const Color(0xff0057FF);
      color1 = Colors.black;
      widget = myBooking[index];
      emit(ChangeColor2());
    }
  }

  void changeBottomNavBar(int index)
  {
    x = index;
    emit(ChangeBottomNavBar1());
  }

  Widget check()
  {
    emit(ChangeBottomNavBar2());
    if(x < 4)
    {
      return screens[x];
    }else if (x == 4)
    {
      return const FilterScreen();
    }else
    {
      return const SearchScreen();
    }
  }
}
