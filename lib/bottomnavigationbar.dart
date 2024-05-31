import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:quickbite/category.dart';
import 'package:quickbite/colorpage.dart';
import 'package:quickbite/homepage.dart';
import 'package:quickbite/imagepage.dart';
import 'package:quickbite/splashscreen.dart';

import 'main.dart';

class BottomnavigationPage extends StatefulWidget {
  const BottomnavigationPage({super.key});

  @override
  State<BottomnavigationPage> createState() => _BottomnavigationPageState();
}

class _BottomnavigationPageState extends State<BottomnavigationPage> {
  int selectedindex=0;
  List pages=[
    HomePage(),
    CategoryPage(),
    CategoryPage(),
    CategoryPage(),
    CategoryPage(),


    // HomePage(),
    // CategoryPage(),
    // HomePage(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedindex],
      bottomNavigationBar: GNav(
        // gap: 2,
        tabBackgroundColor: colorPage.primaryColor,
        onTabChange: (index){
          print(index);
          selectedindex=index;
          setState(() {

          });
        },
        padding: EdgeInsets.all(width*0.03),
        tabs: const [
          GButton(icon: Icons.account_circle,
          text:"go crispy"),
          GButton(icon: Icons.shopping_cart,
              text:"cart"),
          GButton(icon: Icons.shopping_bag,
              text:"bag"),
          GButton(icon: Icons.favorite_outline_sharp,
              text:"favourites"),
          GButton(icon: Icons.sort_sharp,
              text:"sort"),
        ]
      ),
      //

    );
  }
}
