import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:phone_text_field/phone_text_field.dart';
import '../../shared/components.dart';
import '../verification_screen/VerificationScreen.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  File? imageFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(flex: 2),
          imageFile != null
              ? Image.file(
                  imageFile!,
                  width: 313,
                  height: 205,
            fit: BoxFit.cover,
                )
              : Image.asset(
                  'assets/images/lic.jpeg',
                  width: 313,
                  height: 205,
                  fit: BoxFit.cover,
                ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 75,
                height: 2,
                color: Colors.black,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                'or',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'roboto',
                    fontSize: 22),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 75,
                height: 2,
                color: Colors.black,
              ),
            ],
          ),
          const SizedBox(
            height: 35,
          ),
          FloatingActionButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('make a choice'),
                  content: SingleChildScrollView(
                    child: Column(
                      children: [
                        ListTile(
                          leading: const Icon(Icons.image),
                          title: const Text('Gallery'),
                          onTap: () async {
                            var image = await ImagePicker.pickImage(
                                source: ImageSource.gallery);
                            setState(() {
                              imageFile = image;
                            });
                            Navigator.pop(context);
                          },
                        ),
                        ListTile(
                          leading: const Icon(Icons.camera_alt),
                          title: const Text('Camera'),
                          onTap: () async {
                            var image = await ImagePicker.pickImage(
                                source: ImageSource.camera);
                            setState(() {
                              imageFile = image;
                            });
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            elevation: 10,
            backgroundColor: Colors.white,
            child: const Icon(
              Icons.upload,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 33, right: 33),
            child: PhoneTextField(
              locale: const Locale('en'),
              decoration: const InputDecoration(
                filled: true,
                contentPadding: EdgeInsets.zero,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(),
                ),
                prefixIcon: Icon(Icons.phone),
                labelText: "Phone number",
              ),
              searchFieldInputDecoration: const InputDecoration(
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(),
                ),
                suffixIcon: Icon(Icons.search),
                hintText: "Search country",
              ),
              initialCountryCode: "AE",
              onChanged: (phone) {
                debugPrint(phone.completeNumber);
              },
            ),
          ),
          const Spacer(flex: 1),
          Button(
              height: 52,
              width: 294,
              text: 'continue',
              ButtonColor: 0xff0057FF,
              onpressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => verificationScreen()));
              },
              borderRadius: 14,
              FontFamily: 'roboto'),
          const Spacer(flex: 2),
        ],
      ),
    );
  }
}
