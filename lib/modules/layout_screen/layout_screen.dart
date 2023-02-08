import 'package:easy_parking/modules/filter_screen/filter_screen.dart';
import 'package:easy_parking/modules/layout_screen/cubit/app_states.dart';
import 'package:easy_parking/modules/search_screen/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/app_cubit.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppStates>(
      listener: (context,state) {},
      builder: (context,state)
      {

        return  Scaffold(
          body: Stack(
            alignment: Alignment.bottomCenter,
            children:
            [
              AppCubit.get(context).check(),
              Padding(
                padding: const EdgeInsetsDirectional.only(bottom: 20.0),
                child: BottomNavigationBar(
                  selectedItemColor: const Color(0xff0057FF),
                  type: BottomNavigationBarType.fixed,
                  currentIndex: AppCubit.get(context).x,
                  onTap: (value)
                  {
                    AppCubit.get(context).changeBottomNavBar(value);
                  },
                  items: const
                  [
                    BottomNavigationBarItem(
                      label: 'Home',
                      icon: Icon(
                        Icons.home,
                        size: 40,
                      ),
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.menu,
                        size: 40.0,
                      ),
                      label: 'My Booking',
                    ),
                    BottomNavigationBarItem(
                      label: 'Location',
                      icon: Icon(
                        Icons.location_pin,
                        size: 40,
                      ),
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.person,
                        size: 40,
                      ),
                      label:'profile',
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
