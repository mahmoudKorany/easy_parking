import 'package:flutter/material.dart';

import '../../shared/components.dart';

class ChosePlaceScreen extends StatelessWidget {
  const ChosePlaceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xfffafafa),
        actions: [
          IconButton(
            onPressed: (){},
           icon: const Icon(Icons.arrow_forward ,color: Colors.black,size: 35,)
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Choose a Place' ,
            style: TextStyle(
              fontSize: 23 ,
              fontFamily: 'roboto',
              fontWeight: FontWeight.w800
            ),
          ) ,
          const SizedBox(height: 25,) ,
          Button(
            ButtonColor: 0xff0057FF ,
            height:42 ,
            width: 125,
            text: 'Ground Floor' ,
            onpressed: (){} ,
            borderRadius: 10
          ) , 

          Row(
            children: [
              Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 433,
                        width: 2,
                        color: Colors.black,
                      ),
                      Column(
                        children: [
                          Image.asset('images/assets/Line 35.png') ,
                          Image.asset('images/assets/205 5.png') ,
                          Image.asset('images/assets/Line 35.png') ,
                          Image.asset('images/assets/205 5.png') ,
                          Image.asset('images/assets/Line 35.png') ,
                          const Text('B3' , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w800),) ,
                          Image.asset('images/assets/Line 35.png') ,
                          Image.asset('images/assets/205 5.png') ,


                        ],
                      ) ,
                      Container(
                        height: 346,
                        width: 2,
                        color: Colors.black,
                      ),


                    ],
                  ) ,

              ) ,
              Expanded(
                  child: Column(
                    children:const [
                      SizedBox(height: 25,) ,
                      Text('Enter' , style: TextStyle(fontSize: 16),) ,
                      SizedBox(height: 25,) ,
                      Icon(Icons.arrow_downward_outlined ,size: 30, color: Color(0xffF9A000),),
                      SizedBox(height: 30,) ,
                      Icon(Icons.arrow_downward_outlined ,size: 30, color: Color(0xffF9A000),),
                      SizedBox(height: 30,) ,
                      Icon(Icons.arrow_downward_outlined ,size: 30, color: Color(0xffF9A000),),
                      SizedBox(height: 30,) ,
                      Icon(Icons.arrow_downward_outlined ,size: 30, color: Color(0xffF9A000),),
                      SizedBox(height: 30,) ,
                      Icon(Icons.arrow_downward_outlined ,size: 30, color: Color(0xffF9A000),),
                      SizedBox(height: 30,) ,
                      Icon(Icons.arrow_downward_outlined ,size: 30, color: Color(0xffF9A000),),
                      SizedBox(height: 20,) ,
                      Text('Exit' , style: TextStyle(fontSize: 16),) ,

                    ],
                  ) , 
              ) ,
              Expanded(
                child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 350,
                    width: 2,
                    color: Colors.black,
                  ),
                  Column(
                    children: [
                      Image.asset('images/assets/Line 34.png') ,
                      Image.asset('images/assets/205 1.png') ,
                      Image.asset('images/assets/Line 34.png') ,
                      Image.asset('images/assets/205 1.png') ,
                      Image.asset('images/assets/Line 34.png') ,
                      const Text('C3' , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w800),) ,
                      Image.asset('images/assets/Line 34.png') ,
                      Image.asset('images/assets/205 1.png') ,


                    ],
                  ) ,
                  Container(
                    height: 433,
                    width: 2,
                    color: Colors.black,
                  ),


                ],
              ) ,
              ) ,
            ],

          ) ,
          const SizedBox(height: 85,) ,
          Button(
              ButtonColor: 0xff0057FF ,
              height:42 ,
              width: 294,
              text: 'Confirm Booking' ,
              onpressed: (){} ,
              borderRadius: 10
          ) ,

        ],
      ),
    );
  }
}
