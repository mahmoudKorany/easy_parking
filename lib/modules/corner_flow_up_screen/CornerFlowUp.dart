import 'package:flutter/material.dart';

import '../../shared/components.dart';
class CornerFlowUp extends StatelessWidget {
  const CornerFlowUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xfffafafa),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_forward, color: Colors.black, size: 35,)
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Corner Flow-up',
            style: TextStyle(
              fontFamily: 'roboto',
              fontSize:25 ,
              fontWeight: FontWeight.w800
            ),
          ) ,
          Image.asset('images/assets/devon-janse-van-rensburg-ZTI81GyvVHs-unsplash-removebg-preview 1.png' , width: 486, height: 400,) ,
          Image.asset('images/assets/Group 106.png') ,
          const SizedBox(height: 40,) ,
          const Text(
            'Successful operation',
            style: TextStyle(
                fontFamily: 'roboto',
                fontSize:25 ,
                fontWeight: FontWeight.w800
            ),
          ) ,
          const SizedBox(height: 40,) ,
          Button(
              text: 'Get QR Code',
              onpressed: (){},
              width: 240,
              height: 46,
              ButtonColor:0xff0057ff ,
            borderRadius: 10
          ) ,
        ],
      ),
    );
  }
}
