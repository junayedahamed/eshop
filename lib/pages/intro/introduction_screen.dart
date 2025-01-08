// import 'dart:async';

// import 'package:eshop/pages/splashScreen/splash_screen.dart';
// import 'package:flutter/material.dart';

// class IntroductionScreen extends StatefulWidget {
//   const IntroductionScreen({super.key});

//   @override
//   State<IntroductionScreen> createState() => _IntroductionScreenState();
// }

// class _IntroductionScreenState extends State<IntroductionScreen> {
//   @override
//   void initState() {
//     super.initState();
//     Timer(Duration(seconds: 3), () {
//       Navigator.of(context).push(MaterialPageRoute(
//         builder: (context) => SplashScreen(),
//       ));
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: Container(
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         decoration: BoxDecoration(
//             image: DecorationImage(
//           image: AssetImage(
//             "images/intro.jpg",
//           ),
//           fit: BoxFit.cover,
//         )),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(
//               Icons.shopping_cart,
//               color: Colors.orange,
//               size: 250,
//             ),
//             Text(
//               "eShop",
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 35,
//                 fontWeight: FontWeight.w700,
//                 fontStyle: FontStyle.italic,
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
