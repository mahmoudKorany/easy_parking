import 'package:flutter/material.dart';

import '../../shared/components.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  bool checkBoxValue = false ;
  bool checkBoxValue2 = false ;
  bool checkBoxValueSave = false ;
    var Name = TextEditingController() ;
    var VisaNumber = TextEditingController() ;
    var VisaDate = TextEditingController() ;
    var VisaLastNumbers = TextEditingController() ;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xfffafafa),
        actions: [
          IconButton(
            onPressed: (){},
            icon: const Icon(
              Icons.arrow_forward ,
              color: Colors.black,
            ),
          ) ,
        ],

      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 27),
            child: Text(
              'Payment method' ,
              style: TextStyle(
                fontSize: 23 ,
                fontWeight: FontWeight.bold ,
                fontFamily: 'roboto'
              ),
            ),
          ),
          const SizedBox(height: 20,) ,
          Container(
            margin: const EdgeInsets.only(left: 27 , right:27),
            width: MediaQuery.of(context).size.width,
            height: 42,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: Border.all(style: BorderStyle.solid , color: const Color(0xff0057FF))
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset('assets/images/visacard.png'),
                const SizedBox(width: 10,),
                Image.asset('assets/images/maste.png'),
                const Spacer(flex: 1,) ,
                const Text(
                    'بطاقة ائتمان' ,
                    style: TextStyle(
                      fontSize: 18
                    ),
                ) ,
                const SizedBox(width: 10,) ,
                Checkbox(
                  value: checkBoxValue,
                  onChanged: (value)
                  {
                    setState(() {
                      checkBoxValue=value!;
                    });
                  },
                  activeColor: const Color(0xff0057FF),
                ) ,


              ],
            ),
          ),
          const SizedBox(height: 20,) ,
          Container(
            margin: const EdgeInsets.only(left: 27 , right:27),
            width: MediaQuery.of(context).size.width,
            height: 42,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(style: BorderStyle.solid , color: const Color(0xff0057FF))
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                const Text(
                  ' الدفع النقدى' ,
                  style: TextStyle(
                      fontSize: 18
                  ),
                ) ,
                const SizedBox(width: 10,) ,
                Checkbox(
                  value: checkBoxValue2,
                  onChanged: (value)
                  {
                    setState(() {
                      checkBoxValue2=value!;
                    });
                  },
                  activeColor: const Color(0xff0057FF),
                ) ,


              ],
            ),
          ),
          const SizedBox(height: 15,) ,
          Padding(
            padding: const EdgeInsets.only(left: 29.0 , right: 29),
            child: Image.asset(
              'assets/images/books-library 1.png' ,
               width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 27),
            child: Text(
              'Enter your card details' ,
              style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold ,
                  fontFamily: 'roboto'

              ),
            ),
          ),
          const SizedBox(height: 15,) ,

          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(style: BorderStyle.solid , color: const Color(0xff0057FF))
            ),

            height: 42,
            margin: const EdgeInsets.only(left:27 , right:27),
            child: defaultTextFormFelid(
                edgeInsetsGeometry:const EdgeInsets.only(top: 10) ,
                isPass: false,
                type: TextInputType.text,
                controller: Name ,
              hint: 'Your name' ,
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(6) , borderSide: BorderSide(color: Color(0xff0057FF)))
            ),
          ) ,
          const SizedBox(height: 15,) ,
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(style: BorderStyle.solid , color: const Color(0xff0057FF))
            ),

            height: 42,
            margin: const EdgeInsets.only(left:27 , right:27),
            child: defaultTextFormFelid(
                edgeInsetsGeometry:const EdgeInsets.only(top: 10) ,
                isPass: false,
                type: TextInputType.text,
                controller: VisaNumber ,
              hint: 'Visa Number' ,
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(6) , borderSide: BorderSide(color: Color(0xff0057FF)))
            ),
          ) ,
          const SizedBox(height: 15,) ,

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(style: BorderStyle.solid , color: const Color(0xff0057FF))
                ),

                height: 42,
                width: 135,
                margin: const EdgeInsets.only(left:27 , right:27),
                child: defaultTextFormFelid(
                    edgeInsetsGeometry:const EdgeInsets.only(top: 10) ,
                    isPass: false,
                    type: TextInputType.text,
                    controller: VisaDate ,
                    hint: '11/3' ,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(6) , borderSide: BorderSide(color: Color(0xff0057FF)))
                ),
              ) ,
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(style: BorderStyle.solid , color: const Color(0xff0057FF))
                ),

                height: 42,
                width: 135,
                margin: const EdgeInsets.only(left:27 , right:27),
                child: defaultTextFormFelid(
                    edgeInsetsGeometry:const EdgeInsets.only(top: 10) ,
                    isPass: false,
                    type: TextInputType.text,
                    controller: VisaLastNumbers ,
                    hint: '009' ,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(6) , borderSide: BorderSide(color: Color(0xff0057FF)))
                ),
              ) ,

            ],
          ) ,
          const SizedBox(height: 15,) ,
          Padding(
            padding: const EdgeInsets.only(left: 13.0),
            child: Row(
              children: [
                Checkbox(
                    value: checkBoxValueSave,
                    onChanged: (value)
                    {
                      setState(() {
                        checkBoxValueSave=value!;
                      });
                    } ,
                ) ,
               const Text(
                  'Do you want to save the card data for use again?'
                ) ,
              ],
            ),
          ) ,
          const SizedBox(height: 30,) ,
          Padding(
            padding: const EdgeInsets.only(left: 25,right: 25),
            child: Button(
                FontFamily: 'roboto' ,
                text: 'Pay Now',
                onpressed: (){},
                width: MediaQuery.of(context).size.width,
              height: 46,
              ButtonColor: 0xff0057FF ,
              borderRadius: 10
            ),
          )
        ],
      ),
    );
  }
}
