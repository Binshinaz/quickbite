import 'package:flutter/material.dart';
import 'package:quickbite/bottomnavigationbar.dart';
import 'package:quickbite/colorpage.dart';
import 'package:quickbite/homepage.dart';
import 'package:quickbite/imagepage.dart';

import 'main.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(
        seconds: 2)).then((value) => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BottomnavigationPage(),))
    );
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        height: height*1,
        width: width*1,
        decoration: BoxDecoration(
          image: DecorationImage(image:
         AssetImage(imagePage.images1),fit: BoxFit.cover,),
          ),
        // child: Image.asset(imagePage.images1),
          ),

//       SingleChildScrollView(
//         child: Column(
//           children: [
//             Stack(
//               children:[
//
//               //
// Positioned(
//   top:0,
//   right: width*0.01,  child: CircleAvatar(
//     radius: width*0.28,
//     backgroundColor: Colors.black,
//     child: Container(
//       height: width*0.4,
//       width: width*0.4,
//       child: Image.asset(imagePage.quick1, fit: BoxFit.cover,
//       ),
//     ),
//   ),
// ),
//         //         Positioned(
//         //           bottom:0,
//         //           right: width*0.01,
//         //           child: InkWell(
//         //             onTap: (){
//         //               Navigator.push(context, MaterialPageRoute(builder: (context) => BottomnavigationPage(),));
//         //             },
//         //             child: Container(
//         //               height: width*0.3,
//         //               width: width*0.3,
//         //               decoration: BoxDecoration(
//         //                 color: colorPage.primaryColor,
//         //                 borderRadius: BorderRadius.circular(width*0.09),
//         //                 image: DecorationImage(
//         //                   image: AssetImage(imagePage.blackarrow1,)
//         //                 )
//         //               ),
//         //             ),
//         //           ),
//         //         )
//         ]
//             ),
//
//           ],
//         ),
//       )


    );
  }
}
