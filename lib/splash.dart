import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'check_just_audio.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(
        const Duration(seconds: 4), () => Get.offAll(() => const CheckAudio()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: Get.height,
          width: Get.width,
          decoration: const BoxDecoration(
            color: Color(0xffffcf02),
            // image: DecorationImage(
            //   image: AssetImage(
            //     'images/applogoo.jpg',
            //   ),
            //   fit: BoxFit.cover,
            // ),
          ),
          child: Stack(
            alignment: Alignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/applogoo.jpg',
              ),
              Positioned(
                bottom: Get.height * 0.25,
                child: Column(
                  children: [
                    Text(
                      'RADIO B',
                      style: GoogleFonts.asul(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: Adaptive.px(60)),
                      // style: TextStyle(
                      // color: Colors.black,
                      // fontWeight: FontWeight.bold,
                      // fontSize: Adaptive.px(60)),
                    ),
                    Text(
                      'uma rádio do cara*lho',
                      style: GoogleFonts.asul(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: Adaptive.px(20),
                      ),
                      // style: TextStyle(
                      // color: Colors.black,
                      // fontWeight: FontWeight.normal,
                      // fontSize: Adaptive.px(20),
                      // ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
