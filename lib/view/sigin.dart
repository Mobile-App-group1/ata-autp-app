import 'package:ata_auto_app/view/mutiscreen.dart';
import 'package:ata_auto_app/view/signup_screen.dart';
import 'package:ata_auto_app/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/form.dart';
import '../responsive/responsive.dart';

// ignore: must_be_immutable
class Signin_Screen extends StatelessWidget {
  Signin_Screen({super.key});

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        child: Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: width * 0.9,
                  height: height * 0.5,
                  decoration: BoxDecoration(
                      color: colorsWhite,
                      borderRadius: BorderRadius.circular(width * 0.05),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4,
                          color: Colors.grey.withOpacity(0.5),
                        )
                      ]),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InputForm(
                          hintText: 'Phone number or email',
                          controller: email,
                        ),
                        Inputpassword(
                          controller: password,
                          hintText: 'Password',
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: () async {
                            Get.to(RoutesPage());
                          },
                          child: Boxbutton(
                            colorbtn: Colors.blue,
                            namebtn: 'Login',
                            colortext: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        GestureDetector(
                          onTap: () async => Get.to(SignUp_Screen()),
                          child: Boxbutton(
                            colorbtn: Colors.blue,
                            namebtn: 'Sign Up',
                            colortext: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        SizedBox(
                          width: width * 0.6,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: width * 0.15,
                                height: width * 0.15,
                                decoration: BoxDecoration(
                                    color: colorBlue,
                                    borderRadius:
                                        BorderRadius.circular(width * 0.075)),
                                child: const Center(
                                  child: Text('Gmail'),
                                ),
                              ),
                              Container(
                                width: width * 0.15,
                                height: width * 0.15,
                                decoration: BoxDecoration(
                                    color: colorBlue,
                                    borderRadius:
                                        BorderRadius.circular(width * 0.075)),
                                child: const Center(
                                  child: Text('FB'),
                                ),
                              )
                            ],
                          ),
                        )
                      ]),
                ),
              ],
            )),
      ),
    );
  }
}
