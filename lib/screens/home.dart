import 'package:flutter/material.dart';

import 'dashboard.dart';
import 'drawer_screen.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(vsync: this);
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _controller.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Center(
//             child: AnimatedTextKit(
//               animatedTexts: [
//                 TypewriterAnimatedText(
//                   'Hello world!',
//                   textStyle: const TextStyle(
//                     fontSize: 32.0,
//                     fontWeight: FontWeight.bold,
//                   ),
//                   speed: const Duration(milliseconds: 200),
//                 ),
//               ],
//               totalRepeatCount: 4,
//               pause: const Duration(milliseconds: 100),
//               displayFullTextOnTap: true,
//               stopPauseOnTap: true,
//             ),
//           ),
//           SizedBox(
//             width: 350.0,
//             child: TextLiquidFill(
//               text: 'LIQUIDY',
//               waveColor: Colors.blueAccent,
//               boxBackgroundColor: Colors.white,
//               textStyle: TextStyle(
//                 fontSize: 50.0,
//                 fontWeight: FontWeight.bold,
//               ),
//               boxHeight: 300.0,
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [DrawerScreen(), DashboardScreen()],
      ),
    );
  }
}
