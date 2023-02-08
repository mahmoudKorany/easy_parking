import 'package:easy_parking/modules/layout_screen/layout_screen.dart';
import 'package:flutter/material.dart';
import '../../shared/components.dart';

class verificationScreen extends StatelessWidget {
  verificationScreen({Key? key}) : super(key: key);
  var verificationController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Image.asset(
                  'assets/images/confrim.jpeg',
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Enter the message consisting of 6 digits',
                  style: TextStyle(
                    fontFamily: 'roboto',
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: defaultTextFormFelid(
                    isPass: false,
                    type: TextInputType.number,
                    controller: verificationController,
                    validate: (value) {
                      if (value!.isEmpty) {
                        return 'Should Enter code';
                      } else {
                        return null;
                      }
                    },
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hint: 'Enter code', edgeInsetsGeometry: const EdgeInsets.all(0),
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                Button(
                    height: 52,
                    width: 294,
                    text: 'login',
                    ButtonColor: 0xff0057FF,
                    onpressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const LayoutScreen(),
                        ),
                      );
                    },
                    borderRadius: 14,
                    FontFamily: 'roboto'),
                const SizedBox(
                  height: 40,
                ),
                const Text('Repost 0:45'),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
