// import 'dart:async';
// import 'package:get/get.dart';
// import 'package:flutter/material.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({Key? key}) : super(key: key);

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen>
//     with TickerProviderStateMixin {
//   late Animation<double> animation;
//   late AnimationController controller;

//   @override
//   void initState() {
//     super.initState();
//     controller = new AnimationController(
//         vsync: this, duration: const Duration(seconds: 2))
//       ..forward();

//     animation = new CurvedAnimation(parent: controller, curve: Curves.linear);
//     // Timer(const Duration(seconds: 3), (() => Get.offAllNamed(R)));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           ScaleTransition(
//             scale: animation,
//             child: Center(
//               child: Image.asset(
//                 "assets/images/splash_franime.png",
//                 width: 500,
//               ),
//             ),
//           ),
//           Center(
//             child: Image.asset(
//               "assets/images/splash_franime2.png",
//               width: 300,
//             ),
//           )
//         ],
//       ),
//     // );
//   }
// }
