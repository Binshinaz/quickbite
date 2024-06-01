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
         AssetImage(imagePage.fillet1),fit: BoxFit.cover,),
          ),

          ),

    );
  }
}
