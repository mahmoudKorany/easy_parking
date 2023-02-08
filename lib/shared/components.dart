import 'package:flutter/material.dart';

Widget Button({
  required String text ,
  required Function onpressed ,
  required double width ,
  required double height ,
  required int ButtonColor ,
  double? borderRadius ,
  String ?FontFamily ,
})=>Container(
  width: width,
  height: height ,
  decoration: BoxDecoration(
    color: Color(ButtonColor),
    borderRadius: BorderRadius.circular(borderRadius!) ,


  ),
  child: MaterialButton(
    onPressed: (){
      onpressed();
    },
    child: Text(
        text ,
      style: TextStyle(
        color: Colors.white ,
        fontFamily: '$FontFamily' ,

      ),
    ),
  ) ,
) ;





Widget defaultTextFormFelid({
  required bool isPass ,
  required TextInputType type ,
  required TextEditingController controller ,
  String? Function(String?)?onSubmitted ,
  String? Function(String?)?onChanged,
  String? Function(String?)?validate ,
  String? hint ,
  IconData? prefix ,
  IconData? sufffix ,
  Function?ontap ,
  bool?isclick = true ,
  InputBorder? border, required EdgeInsets edgeInsetsGeometry ,


})=>TextFormField(

  obscureText: isPass,
  keyboardType:type ,
  controller: controller,
  onFieldSubmitted: onSubmitted,
  onChanged: onChanged,
  validator: validate,
  onTap: ()
  {
    ontap ;
  },
  enabled:isclick ,
  decoration: InputDecoration(
    prefixIcon: Icon(
      prefix ,
      color: Colors.black45,
    ) ,
    suffixIcon: Icon(
      sufffix ,
      color: Colors.black45,
    ) ,
    border:border ,
    hintText: hint ,


  ),

);


Widget ContainerPrice({
  required int hour  ,
  required String Price ,


})=>Container(
  width: 50,
  height: 65,
  decoration: BoxDecoration(
    color: const Color(0xff6dacff) ,
    borderRadius: BorderRadius.circular(7) ,

  ),
  child: Column(
    children: [
      Text(
        '$hour hr' ,
        style: const TextStyle(
          color: Colors.white ,
          fontFamily: 'roboto',
        ),
      ) ,
      const SizedBox(height: 5,)  ,
      Container(
        height: 1,
        width: 45,
        color: Colors.white,
      ) ,
      const SizedBox(height: 5,)  ,
      Text(
        '$Price\nEGP' ,
        style: const TextStyle(
          color: Colors.white ,
          fontFamily: 'roboto',
        ),

      ) ,

    ],
  ),
) ;