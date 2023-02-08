import 'package:flutter/material.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          const CircleAvatar(
            radius: 75,
            backgroundImage: AssetImage('assets/images/sele.png'),
          ) ,
          const SizedBox(height: 20,),
          const Text(
              'Selena Gomez' ,
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 21,
              fontWeight: FontWeight.w600
            ),
          ) ,
          const SizedBox(height: 40,),
          const ListTile(
            leading: Icon(
              Icons.person ,
              color: Color(0xff0057FF),
              size: 25,
            ),
            title: Text(
              'Account' ,
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18 ,


              ) ,
            ),
          ) ,
          Container(
            margin: const EdgeInsets.only(left: 20),
            height: 1,
            width: MediaQuery.of(context).size.width,
            color: const Color(0xff0057FF),
          ) ,
          const SizedBox(height: 10,),
          const ListTile(
            leading: Icon(
              Icons.notifications ,
              color: Color(0xff0057FF),
              size: 25,
            ),
            title: Text(
              'Notifications' ,
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18 ,


              ) ,
            ),
          ) ,
          Container(
            margin: const EdgeInsets.only(left: 20),
            height: 1,
            width: MediaQuery.of(context).size.width,
            color: const Color(0xff0057FF),
          ) ,
          const SizedBox(height: 10,),
          const ListTile(
            leading: Icon(
              Icons.settings ,
              color: Color(0xff0057FF),
              size: 25,
            ),
            title: Text(
              'Settings' ,
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 19 ,


              ) ,
            ),
          ) ,
          Container(
            margin: const EdgeInsets.only(left: 20),
            height: 1,
            width: MediaQuery.of(context).size.width,
            color: const Color(0xff0057FF),
          ) ,
          const SizedBox(height: 10,),
          const ListTile(
            leading: Icon(
              Icons.help ,
              color: Color(0xff0057FF),
              size: 25,
            ),
            title: Text(
              'Help' ,
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 19 ,


              ) ,
            ),
          ) ,
          Container(
            margin: const EdgeInsets.only(left: 20),
            height: 1,
            width: MediaQuery.of(context).size.width,
            color: const Color(0xff0057FF),
          ) ,
          const SizedBox(height: 10,),
          const ListTile(
            leading: Icon(
              Icons.logout_outlined ,
              color: Color(0xff0057FF),
              size: 25,
            ),
            title: Text(
              'Log out' ,
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 19 ,


              ) ,
            ),
          ) ,

        ],
      ),
    );
  }
}
