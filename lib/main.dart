import 'dart:async';

import 'package:flutter/material.dart';



void main() => runApp(MyApp());



class MyApp extends StatelessWidget {

  @override

  Widget build(BuildContext context) => MaterialApp(

    title: 'TabBarView inside PageView',

    home: SwipeScreen(),

  );

}
//
//
//
//
//
//
//
//
//
//
//
//
//
// class MyHomePage extends StatefulWidget {
//
//   MyHomePage({Key? key}) : super(key: key);
//
//
//
//   @override
//
//   _MyHomePageState createState() => _MyHomePageState();
//
// }
//
//
//
// class _MyHomePageState extends State<MyHomePage> {
//
//   final PageController _pageController = PageController(viewportFraction: 0.9);
//   int currentPage = 0;
//
//
//   List _pages = [];
//
//
//   @override
//   void initState() {
//     super.initState();
//     Timer.periodic(Duration(seconds: 3), (timer) {
//       if (currentPage < 1) {
//         currentPage++;
//       } else {
//         currentPage = 0;
//       }
//       _pageController.animateToPage(
//         currentPage,
//         duration: Duration(milliseconds: 500),
//         curve: Curves.easeInOut,
//       );
//     });
//   }
//
//
//     @override
//     Widget build(BuildContext context) {
//       return Stack(
//         children: [
//           PageView(
//             controller: _pageController,
//             onPageChanged: (index) {
//               setState(() {
//                 currentPage = index;
//               });
//             },
//             children: [
//               // Контент для первого окна
//               Container(
//                 color: Colors.red,
//                 child: Center(
//                   child: Text('Окно 1'),
//                 ),
//               ),
//               // Контент для второго окна
//               Container(
//                 color: Colors.blue,
//                 child: Center(
//                   child: Text('Окно 2'),
//                 ),
//               ),
//             ],
//           ),
//           // Индикатор текущей страницы
//           Positioned(
//             bottom: 16,
//             left: 16,
//             child: Row(
//               children: [
//                 Container(
//                   width: 8,
//                   height: 8,
//                   margin: EdgeInsets.only(right: 8),
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color:
//                     currentPage == 0 ? Colors.white : Colors.white54,
//                   ),
//                 ),
//                 Container(
//                   width: 8,
//                   height: 8,
//                   margin: EdgeInsets.only(right: 8),
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color:
//                     currentPage == 1 ? Colors.white : Colors.white54,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       );
//     }
//   }
//
//




//
//
//
//
//
//
//
//
//
//
//
// // class First extends StatefulWidget {
//
// //   const First({Key? key}) : super(key: key);
//
// //
//
// //   @override
//
// //   State<First> createState() => _FirstState();
//
// // }
//
//
//
// // class _FirstState extends State<First> {
//
// //   @override
//
// //   Widget build(BuildContext context) {
//
// //     return Container(
//
// //         decoration: BoxDecoration(
//
// //         borderRadius: BorderRadius.circular(8.0),
//
// //         color: Colors.grey[900],
//
// //         ),
//
// //       padding: EdgeInsets.all(12.0),
//
// //       child: Column(
//
// //         crossAxisAlignment: CrossAxisAlignment.start,
//
// //         children: <Widget>[
//
// //           Row(
//
// //             children: <Widget>[
//
// //               CircleAvatar(
//
// //                 radius: 20.0,
//
// //                 backgroundImage: NetworkImage('https://example.com/avatar.png'),
//
// //               ),
//
// //               SizedBox(width: 8.0),
//
// //               Text(
//
// //                 'Имя пользователя',
//
// //                 style: TextStyle(
//
// //                   color: Colors.white,
//
// //                   fontWeight: FontWeight.bold,
//
// //                   fontSize: 16.0,
//
// //                 ),
//
// //               ),
//
// //               Spacer(),







// class SwipeScreen extends StatefulWidget {
//   @override
//   _SwipeScreenState createState() => _SwipeScreenState();
// }
//
// class _SwipeScreenState extends State<SwipeScreen> {
//   bool isSwiped = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[300],
//       body: Stack(
//         children: [
//           AnimatedPositioned(
//             duration: Duration(milliseconds: 300),
//             //top: isSwiped ? -MediaQuery.of(context).size.height : 0,
//             child: Container(
//               height: MediaQuery.of(context).size.height,
//               width: MediaQuery.of(context).size.width,
//               color: Colors.white,
//               child: Center(
//                 child: Text('Window 1'),
//               ),
//             ),
//           ),
//           AnimatedPositioned(
//             duration: Duration(milliseconds: 300),
//             //top: isSwiped ? 0 : MediaQuery.of(context).size.height,
//             child: Container(
//               height: MediaQuery.of(context).size.height,
//               width: MediaQuery.of(context).size.width,
//               color: Colors.blue,
//               child: Center(
//                 child: Text('Window 2'),
//               ),
//             ),
//           ),
//
//           // Positioned(
//           //   top: 50,
//           //   left: 20,
//           //   child: ElevatedButton(
//           //     onPressed: () {
//           //       setState(() {
//           //         isSwiped = !isSwiped;
//           //       });
//           //     },
//           //     child: Text('Swipe'),
//           //   ),
//           // ),
//         ],
//       ),
//     );
//   }
// }














// class MyPage extends StatefulWidget {
//   @override
//   _MyPageState createState() => _MyPageState();
// }
//
// class _MyPageState extends State<MyPage> {
//   late OverlayState _overlayState;
//
//   @override
//   void initState() {
//     super.initState();
//
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       _overlayState = Overlay.of(context);
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('My Page')),
//       body: Stack(
//         children: [
//           PageView(
//             children: [
//               Container(color: Colors.red),
//               Container(color: Colors.green),
//               Container(color: Colors.blue),
//             ],
//           ),
//           GestureDetector(
//             onHorizontalDragEnd: (details) {
//               if (details.primaryVelocity == 0) return;
//               if (details.primaryVelocity!.compareTo(0) == 1) {
//                 _overlayState.insert(
//                   OverlayEntry(
//                     builder: (context) {
//                       return Center(
//                         child: Container(
//                           width: 200,
//                           height: 200,
//                           color: Colors.black,
//                           child: Text('Overlay'),
//                         ),
//                       );
//                     },
//                   ),
//                 );
//               }
//             },
//             child: Container(),
//           ),
//         ],
//       ),
//     );
//   }
// }
