import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:quickbite/addcart.dart';
import 'package:quickbite/colorpage.dart';
import 'package:quickbite/imagepage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'main.dart';

class HomePage extends StatefulWidget {
  // _SelectableListViewState createState() => _SelectableListViewState();
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List save=[];
  // List<bool>taped=List.generate(6, (index) => false);

  // int _selectedIndex = -1;
  bool checkbox=false;
  bool grid=false;
  TextEditingController searchController=TextEditingController();
  int count=0;
  List bin=[{
  "pic":"assets/images/fillet.png",
  "name":"fish fillet",
  "price":"23 QR",
  "des":" fishgrill,mayonise, drink",
  "star":"3.5",
},
{"pic":"assets/images/burger.png",
"name":"Slaider shrimpo",
"price":"33 QR",
"des":"shrimb burger,friese,drink",
"star":"4.5",    },
{"pic":"assets/images/french.png",
"name":" french fries",
"price":"10 QR",
"des":"french fries,mayonise,drink",
"star":"4.0",
},
  ];
  List abc=[{
    "image":"assets/images/food1.png",
     "name":"chiken burger",
     "price":"23 QR",
    "des":" chikenburger, drink",
    "star":"3.5",
  },
    {"image":"assets/images/food2.png",
      "name":"Tornado fries",
      "price":"30 QR",
      "des":"shrimb,friese,cheese,drink",
    "star":"2.5",    },
    {"image":"assets/images/food3.png",
      "name":" fried chiken",
      "price":"40 QR",
      "des":"chiken,mayonise,drink,sauce",
      "star":"4.0",
    },
    {"image":"assets/images/food4.jpg",
      "name":"mixed pasta",
      "price":"25 QR",
      "des":"chiken,vegeis,cheese, drink",
      "star":"3.3",
    },
    {"image":"assets/images/food5.png",
      "name":"broast",
      "price":"36 QR",
      "des":" chiken,mayonise, drink",
      "star":"3.5",
    },
    {"image":"assets/images/food6.png",
      "name":"cheese burger",
      "price":"30 QR",
      "des":"1 cheese burger, drink",
      "star":"4.2",
    },
    {"image":"assets/images/food7.png",
      "name":"bucket chiken ",
      "price":"50 QR",
      "des":"chiken,mayonise,drink",
      "star":"4.0",
    },
    {"image":"assets/images/food8.png",
      "name":"chiken popcorn",
      "price":"20 QR",
      "des":"12 popcorn ,mayonise,",
      "star":"3.5",
    },

  ];
  bool checkbox1=false;
  bool checkbox2=false;
  bool checkbox3=false;
  bool checkbox4=false;
  bool checkbox5=false;
  bool checkbox6=false;
  String radio1="s";

    List images = [
        "assets/images/food1.png",
        "assets/images/loaded.jpg",
        "assets/images/food3.png",
        "assets/images/food4.jpg",
    ];
    List def=[
    {
    "image":"assets/images/food5.png",
    "text":"Go Crispy original"
},

{ "image":"assets/images/food6.png",
"text":"Extreme Meals"
},

{ "image": "assets/images/food7.png",
"text":"Bucket Meal"
},


{ "image":"assets/images/food8.png",
"text":"Kids Meals"
},
];
  List<bool>taped=List.generate(6, (index) => false);
    int currentindex = 0;
  // int selectedindex=0;
  String? gender;

    @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: colorPage.primaryColor,
     appBar: AppBar(
       backgroundColor: colorPage.primaryColor,
       title:
       Padding(
         padding:  EdgeInsets.all(width*0.01),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text("current Location",
             style: TextStyle(
               color: colorPage.secondaryColor,
               fontSize: width*0.037,
             ),),
             Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Container(
                     child: Icon(Icons.location_on,
                     color: colorPage.secondaryColor,)),
                 Text("Marina Twin tower,Lusail",
                 style: TextStyle(
                   fontSize: width*0.04,
                   color: colorPage.secondaryColor
                 ),)
               ],
             )
           ],
         ),
       ),
       leading: null,
       actions: [
SvgPicture.asset(imagePage.person1),
         SizedBox(width: width*0.05,)
       ],
     ),
body: Stack(

    children: [
    // Content
    Column(
     crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding:  EdgeInsets.only(left: width*0.04,right: width*0.04),
          child: Container(
            height: width*0.15,
            width: width*0.02,
            child: TextFormField(
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                controller: searchController,
                style: TextStyle(
                  fontSize: width*0.05,
                  fontWeight: FontWeight.w600,
                ),

                decoration: InputDecoration(
                  fillColor:Colors.grey[50],
                  filled: true,
                  prefixIcon: Container(
                      height: width*0.02,
                      width: width*0.02,
                      // color: colorPage.seventhColor,
                      child: Padding(
                        padding: EdgeInsets.all(width*0.03),
                        child: Icon(Icons.search,
                            color:Colors.black),)
                  ),
                  suffixIcon: Container(
                      height: width*0.02,
                      width: width*0.02,
                                       ),
                  //
                  labelText: "What you are looking for?",
                  labelStyle: TextStyle(
                    fontSize: width*0.05,
                    fontWeight: FontWeight.w400,
                    color: colorPage.eightColor,

                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none

                  ),

                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: colorPage.secondaryColor



                    ),
                    borderRadius: BorderRadius.circular(width*0.045),
                    //
                  ),
                )

            ),
          ),
        ),
      ],
    ),
    // Stacked Container
    Positioned(
    bottom: 0,
    left: 0,
    right: 0,
    child: Container(
     height: height*0.64,
    decoration: BoxDecoration(
    color: colorPage.secondaryColor,
    borderRadius: BorderRadius.only(
    topRight:Radius.circular(width*0.05) ,
    topLeft:Radius.circular(width*0.05)
    )
    ),
    // color: Colors.green, // Example container color
    child: SingleChildScrollView(
    // controller: _scrollController,
    child: Padding(
      padding:  EdgeInsets.only(left: width*0.05,right: width*0.04),
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      CarouselSlider.builder(itemCount: images.length,
      options:CarouselOptions(
      autoPlay: true,
      // scrollDirection: Axis.horizontal,
      // viewportFraction: 0.7,
      autoPlayAnimationDuration: Duration(
      milliseconds: 200,
      ),
      onPageChanged: (index, reason) {
      currentindex = index;
      setState(() {});
      },
      ),

      itemBuilder: (BuildContext context, int index, int realIndex) {
        return Container(
          height: width*0.50,
          // width:width*16,
          // color: Colors.yellow,
          child: Container(
      height: width * 0.50,
       width: double.infinity,
         margin: EdgeInsets.all(width * 0.015),
      decoration: BoxDecoration(

      borderRadius: BorderRadius.circular(width*0.05),
      // color: Colors.pink,
      image: DecorationImage(
      image: AssetImage(images[index]), fit: BoxFit.cover)),
      ),
        );
      }
      ),

        Center(
          child: AnimatedSmoothIndicator(
            activeIndex: currentindex,
            count: images.length,
            effect: ExpandingDotsEffect(
              dotColor: colorPage.sixthColor,
              activeDotColor: colorPage.primaryColor,
              dotHeight: width * 0.02,
              dotWidth: width * 0.02,
            ),
          ),
        ),
        Text("Menu",style: TextStyle(
          fontSize: width*0.06,
          fontWeight: FontWeight.w600,

        ),),
        SizedBox(height: width*0.02,),
        Container(
          height: width * 0.37,
          width: width * 1.2,
          color:colorPage.secondaryColor,
          child: ListView.builder(
            itemCount: def.length,
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return
                 Container(
                  height: width * 0.2,
                  width: width * 0.3,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: width * 0.25,
                          width: width * 0.25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(width*0.03),
                            image: DecorationImage(
                                image: AssetImage(def[index]["image"]),
                                fit: BoxFit.fill),
                          ),
                        ),
                        Text(def[index]["text" ],
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: width*0.04,
                        ),
                        textAlign: TextAlign.center),


                      ],
                    ),
                  ),
                );

            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Best selling",
              style: TextStyle(
                  fontSize: width*0.06,
                  fontWeight: FontWeight.w600
              ),),
            SizedBox(width: width*0.4,),
            InkWell(
              onTap: (){
                setState(() {
                  grid=!grid;
                });
              },
              child: Text("See All",
                style: TextStyle(
                    fontSize:width*0.04,
                    color: colorPage.primaryColor,
                    fontWeight: FontWeight.w500
                ),),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(width * 0.02),
          child:grid==true? SingleChildScrollView(
            child: Container(
              height: width*1,
              width:width* 1,
              // color: Colors.yellow,
              child: GridView.builder(
                  itemCount: abc.length,
                  scrollDirection: Axis.vertical,
                  // physics: BouncingScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount (
                      crossAxisCount: 2,
                      mainAxisSpacing: width * 0.02,
                      crossAxisSpacing: width * 0.02,
                      childAspectRatio: 1
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Expanded(
                      child: Container(
                        height: width*0.4,
                        width: width*0.6,
                        // color: Colors.blue,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: width * 0.3,
                              width: width * 0.7,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage(abc[index]["image"]),fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(width*0.05),
                              ),
                            ),
                            Row(
                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(abc[index]["name"],
                                  style: TextStyle(
                                    // color: colorPage.primaryColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: width*0.03
                                  ),
                                ),
                                SizedBox(width: width*0.04,),
                                Text(abc[index]["price"],
                                  style: TextStyle(
                                      color: colorPage.primaryColor,
                                      fontWeight: FontWeight.w600,
                                      fontSize: width*0.04
                                  ),),
                              ],
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                    height:width*0.03,
                                    width:width*0.03,
                                    child: SvgPicture.asset(imagePage.ystar1)),
                                Text(abc[index]["star"],
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500
                                  ),),
                                Text(abc[index]["des"],
                                  style: TextStyle(
                                      color: colorPage.seventhColor,
                                    fontSize: width*0.025
                                  ),)
                              ],
                            )
                          ],
                        ),

                      ),
                    );
                  }),
            ),
          ): Container(
            height: width*0.55,
            width: width*0.95,
              // color: Colors.yellow,
            child: ListView.separated(
              itemCount: abc.length,
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (BuildContext, int index) {
                return
                  InkWell(
                    onTap: (){
                      showModalBottomSheet(context: context,
                          isScrollControlled: true,
                          builder: (context) {
                           return StatefulBuilder(
                             builder: (context, setState) {
                               return Container(
                                 height: width*1.2,
                                 width: width*1,
                                 child: SingleChildScrollView(
                                   child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Padding(
                                         padding:  EdgeInsets.all(width*0.05),
                                         child: Row(
                                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                           crossAxisAlignment: CrossAxisAlignment.start,
                                           children: [
                                             Container(
                                               height: width*0.3,
                                               width: width*0.3,
                                               decoration: BoxDecoration(
                                                 borderRadius: BorderRadius.circular(width*0.05),
                                               ),
                                               child: Image.asset(abc[index]["image"],fit: BoxFit.fill,),
                                               // color: Colors.red,
                                             ),
                                             Column(
                                               crossAxisAlignment: CrossAxisAlignment.start,
                                               mainAxisAlignment: MainAxisAlignment.start,
                                               children: [
                                                 Text(abc[index]["name"],
                                                   style: TextStyle(
                                                       fontSize: width*0.06,
                                                       fontWeight: FontWeight.w700
                                                   ),),
                                                 Row(
                                                   children: [
                                                     Container(
                                                         height:width*0.03,
                                                         width: width*0.03,
                                                         child: SvgPicture.asset(imagePage.ystar1)),
                                                     Text(abc[index]["star"],
                                                       style: TextStyle(
                                                           fontWeight: FontWeight.w600
                                                       ),)
                                                   ],
                                                 ),
                                                 Text(abc[index]["des"],
                                                   style: TextStyle(
                                                       fontSize: width*0.04,
                                                       color: colorPage.seventhColor
                                                     // fontWeight: FontWeight.w600
                                                   ),),
                                                 Text(abc[index]["price"],
                                                   style: TextStyle(
                                                       color: colorPage.primaryColor,
                                                       fontWeight: FontWeight.w700,
                                                       fontSize: width*0.06
                                                   ),)
                                               ],
                                             ),
                                             GestureDetector(
                                                 onTap: (){
                                                   if(save.contains(index)){
                                                     save.remove(index);
                                                   }
                                                   else{
                                                     save.add(index);
                                                   }
                                                   setState(() {
                                                     taped[index]=!taped[index];
                                                   }
                                                   );
                                                 },
                                                 child: Container(
                                                     height:width*0.03,
                                                     width:width*0.03,
                                                     decoration: BoxDecoration(
                                                       image: DecorationImage(
                                                         image: AssetImage(!taped[index]?imagePage.greyheart1:imagePage.redheart1),
                                                       ),


                                                     )))],
                                         ),
                                       ),
                                       Padding(
                                         padding: EdgeInsets.only(left:width*0.09),
                                         child: Row(
                                             // mainAxisAlignment: MainAxisAlignment.,
                                             children: [
                                               Text("Quantity",style: TextStyle(
                                                   fontWeight: FontWeight.w500,
                                                   fontSize: width*0.05
                                               ),),
                                               SizedBox(width: width*0.4,),
                                               Container(
                                                 height: width*0.09,
                                                 width: width*0.2,
                                                 decoration: BoxDecoration(
                                                     color: colorPage.ninethColor,
                                                     borderRadius: BorderRadius.circular(width*0.05),
                                                     border: Border.all(
                                                         color: colorPage.ninethColor
                                                     )
                                                 ),
                                                 child: Row(
                                                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                   children: [
                                                     InkWell(
                                                       onTap: (){
                                                         count++;
                                                         setState(() {

                                                         });

                                                       },
                                                       child: Icon(Icons.add,color: Colors.black,),
                                                     ),
                                                     Text('$count'.toString(),
                                                       style: TextStyle(
                                                           color:Colors.black
                                                       ),),
                                                     InkWell(
                                                       onTap: (){
                                                         count<=1? 1:count--;
                                                         setState(() {

                                                         });

                                                       },
                                                       child: Icon(Icons.remove,color: Colors.black,
                                                       ),
                                                     ),
                                                   ],
                                                 ),
                                               ),
//
                                             ]  ),
                                       ),
                                       Padding(
                                         padding:  EdgeInsets.only(left:width*0.09, right: width*0.07),
                                         child: Column(
                                           crossAxisAlignment: CrossAxisAlignment.start,
                                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                           children: [
                                             Text("Meal Size",
                                               style: TextStyle(
                                                   fontWeight: FontWeight.w500,
                                                   fontSize: width*0.05
                                               ),),
                                             Row(
                                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                               children: [
                                                 Text("Go Medium (+3 QR)",
                                                   style: TextStyle(
                                                       color: colorPage.seventhColor
                                                   ),),
                                                 Checkbox(
                                                   value: checkbox1,
                                                   onChanged: (value) {
                                                     setState(() {
                                                       checkbox1=!checkbox1;
                                                     });

                                                   },
                                                   checkColor: colorPage.secondaryColor,
                                                   fillColor: MaterialStateProperty.resolveWith((Set<MaterialState>states){
                                                     if(states.contains(MaterialState.selected)){
                                                       return Colors.deepOrange;
                                                   }
                                                     return Colors.grey[400];}

                                                   ),

                                                   activeColor: colorPage.primaryColor,
                                                   side: BorderSide(
color: Colors.white30
                                                   ),
                                                 ),

                                               ],
                                             ),
                                             Row(
                                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                               children: [
                                                 Text("Go Large (+5 QR)",
                                                   style: TextStyle(
                                                       color: colorPage.seventhColor
                                                   ),),
                                                 Checkbox(
                                                   value: checkbox2,
                                                   onChanged: (value) {
                                                     setState(() {
                                                       checkbox2=!checkbox2;
                                                     });

                                                   },
                                                   checkColor: colorPage.secondaryColor,
                                                   fillColor: MaterialStateProperty.resolveWith((Set<MaterialState>states){
                                                     if(states.contains(MaterialState.selected)){
                                                       return Colors.deepOrange;
                                                     }
                                                     return Colors.grey[400];}

                                                   ),

                                                   activeColor: colorPage.primaryColor,
                                                   side: BorderSide(
                                                       color: Colors.white30
                                                   ),
                                                 ),

                                               ],
                                             ),
                                             Text("Your choices of fries",
                                               style: TextStyle(
                                                   fontWeight: FontWeight.w500,
                                                   fontSize: width*0.05
                                               ),),
                                             Row(
                                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                               children: [
                                                 Text("Add herbs to fries (+3 QR)",
                                                   style: TextStyle(
                                                       color: colorPage.seventhColor
                                                   ),),
                                                 Checkbox(
                                                   value: checkbox3,
                                                   onChanged: (value) {
                                                     setState(() {
                                                       checkbox3=!checkbox3;
                                                     });

                                                   },
                                                   checkColor: colorPage.secondaryColor,
                                                   fillColor: MaterialStateProperty.resolveWith((Set<MaterialState>states){
                                                     if(states.contains(MaterialState.selected)){
                                                       return Colors.deepOrange;
                                                     }
                                                     return Colors.grey[400];}

                                                   ),

                                                   activeColor: colorPage.primaryColor,
                                                   side: BorderSide(
                                                       color: Colors.white30
                                                   ),
                                                 ),

                                               ],

                                             ),
                                             Row(
                                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                               children: [
                                                 Text("Add more Cheese to fries (+2 QR)",
                                                   style: TextStyle(
                                                       color: colorPage.seventhColor
                                                   ),),
                                                 Checkbox(
                                                   value: checkbox4,
                                                   onChanged: (value) {
                                                     setState(() {
                                                       checkbox4=!checkbox4;
                                                     });

                                                   },
                                                   checkColor: colorPage.secondaryColor,
                                                   fillColor: MaterialStateProperty.resolveWith((Set<MaterialState>states){
                                                     if(states.contains(MaterialState.selected)){
                                                       return Colors.deepOrange;
                                                     }
                                                     return Colors.grey[400];}

                                                   ),

                                                   activeColor: colorPage.primaryColor,
                                                   side: BorderSide(
                                                       color: Colors.white30
                                                   ),
                                                 ),

                                               ],
                                             ),
                                             Padding(
                                               padding:  EdgeInsets.only(right: width*0.04),
                                               child: Column(
                                                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                 crossAxisAlignment: CrossAxisAlignment.start,
                                                 children: [
                                                   Text("Your choices of drink",
                                                     style: TextStyle(
                                                         fontWeight: FontWeight.w500,
                                                         fontSize: width*0.05
                                                     ),),


                                               Row(
                                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                 children: [
                                                   Text("Kinza Lemon",
                                                     style: TextStyle(
                                                         color: colorPage.seventhColor
                                                     ),),
                                                   //
                                                   Container(
                                                     height: width*0.05,
                                                     width: width*0.05,
                                                     // color: Colors.red,
                                                     child: Radio(
                                                       fillColor: MaterialStatePropertyAll(
                                                           Colors.grey[400]),
                                                       activeColor: colorPage.primaryColor,
                                                         value: "lemon",
                                                         groupValue: gender,
                                                         onChanged: (String?Value){
                                                           setState((){
                                                             gender= Value;
                                                           });

                                                         },


                                                     ),
                                                   ),

                                                 ],

                                               ),
                                               SizedBox(height: width*0.05,),
                                               Row(
                                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                                 children: [
                                                   Text("Kinza Orange",
                                                     style: TextStyle(
                                                         color: colorPage.seventhColor
                                                     ),),
                                                   //
                                                   Container(
                                                     height: width*0.05,
                                                     width: width*0.05,
                                                     // color: Colors.red,
                                                     child: Radio(
                                                       fillColor: MaterialStatePropertyAll(
                                                           Colors.grey[400]),
                                                       activeColor: colorPage.primaryColor,

                                                       value: "orange",
                                                       groupValue: gender,
                                                       onChanged: (String?Value){
                                                         setState((){
                                                           gender= Value!;
                                                         });

                                                       },


                                                     ),
                                                   ),

                                                 ],
                                               ),
                                                   SizedBox(height: width*0.05,),
                                               Row(
                                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                 children: [
                                                   Text("Kinza cola",
                                                     style: TextStyle(
                                                         color: colorPage.seventhColor
                                                     ),),
                                                   //
                                                   Container(
                                                     height: width*0.05,
                                                     width: width*0.05,
                                                     // color: Colors.red,
                                                     child: Radio(
                                                       fillColor: MaterialStatePropertyAll(
                                                           Colors.grey[400]),
                                                       activeColor: colorPage.primaryColor,

                                                       value: "cola",
                                                       groupValue: gender,
                                                       onChanged: (String?Value){
                                                         setState((){
                                                           gender= Value!;
                                                         });

                                                       },


                                                     ),
                                                   ),

                                                 ],
                                               ),
                                               ]
                                               ),
                                             ),
                                             SizedBox(height: width*0.05,),
                                             Center(
                                               child: Container(height: width*0.15,
                                                 width: width*1.1,
                                                 decoration: BoxDecoration(
                                                     color: colorPage.primaryColor,
                                                     borderRadius: BorderRadius.circular(width*0.05)
                                                 ),
                                                 child: Row(
                                                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                   children: [
                                                     Row(
                                                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                       children: [
                                                         Text("TOTAL",
                                                           style: TextStyle(
                                                             fontSize: width*0.04,
                                                               color: colorPage.secondaryColor,
                                                               fontWeight: FontWeight.w800
                                                           ),),
                                                         SizedBox(width: width*0.03,),
                                                         Text("23QR",
                                                           style: TextStyle(
                                                               fontSize: width*0.06,
                                                               color: colorPage.secondaryColor,
                                                               fontWeight: FontWeight.w800
                                                           ),),]),
                                                         Text("ADD TO CART",
                                                           style: TextStyle(
                                                               fontSize: width*0.04,
                                                               color: colorPage.secondaryColor,
                                                               fontWeight: FontWeight.w800

                                                           ),
                                                         ),


                                                   ],
                                                 ),
                                               ),
                                             )


                                           ],
                                         ),
                                       )
                                     ],
                                   ),
                                 ),
                               );
                             },

                           );
//
                          },);
                    },
                    child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Container(
                        height: width*0.4,
                        width: width*0.6,
                        // color: Colors.red,
                        child: Container(
                          height: width*0.35,
                          width: width*0.6,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(abc[index]["image"]),fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(width*0.05),
                          ),
                          // child: Text(abc[index]["name"]),
                        ),

                      ),
                      Row(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(abc[index]["name"],
                            style: TextStyle(
                                // color: colorPage.primaryColor,
                                fontWeight: FontWeight.w600,
                                fontSize: width*0.05
                            ),
                          ),
                            SizedBox(width: width*0.06,),
                          Text(abc[index]["price"],
                          style: TextStyle(
                            color: colorPage.primaryColor,
                            fontWeight: FontWeight.w600,
                            fontSize: width*0.05
                          ),),
                        ],
                      ),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
          Container(
            height:width*0.03,
              width:width*0.03,
              child: SvgPicture.asset(imagePage.ystar1)),
Text(abc[index]["star"],
style: TextStyle(
  fontWeight: FontWeight.w700
),),
      Text(abc[index]["des"],
      style: TextStyle(
        color: colorPage.seventhColor
      ),)
  ],
)
                    ],
                ),
                  );
              },
              separatorBuilder: (context, index) {
                return SizedBox(width: width*0.03,);
              },
            ),

          ),
        ),
        Text("Top Deals",
          style: TextStyle(
              fontSize: width*0.06,
              fontWeight: FontWeight.w600
          ),),
        Container(
          child: ListView.separated(
            physics: BouncingScrollPhysics(),
            // padding: EdgeInsets.all(width*0.03),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return
                  InkWell(
                    onTap: (){
                      showModalBottomSheet(context: context,
                        isScrollControlled: true,
                        builder: (context) {
                          return StatefulBuilder(
                            builder: (context, setState) {
                              return Container(
                                height: width*1.2,
                                width: width*1,
                                child: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:  EdgeInsets.all(width*0.05),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: width*0.3,
                                              width: width*0.3,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(width*0.05),
                                              ),
                                              child: Image.asset(bin[index]["pic"],fit: BoxFit.fill,),
                                              // color: Colors.red,
                                            ),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Text(bin[index]["name"],
                                                  style: TextStyle(
                                                      fontSize: width*0.06,
                                                      fontWeight: FontWeight.w700
                                                  ),),
                                                Row(
                                                  children: [
                                                    Container(
                                                        height:width*0.03,
                                                        width: width*0.03,
                                                        child: SvgPicture.asset(imagePage.ystar1)),
                                                    Text(bin[index]["star"],
                                                      style: TextStyle(
                                                          fontWeight: FontWeight.w600
                                                      ),)
                                                  ],
                                                ),
                                                Text(bin[index]["des"],
                                                  style: TextStyle(
                                                      fontSize: width*0.04,
                                                      color: colorPage.seventhColor
                                                    // fontWeight: FontWeight.w600
                                                  ),),
                                                Text(bin[index]["price"],
                                                  style: TextStyle(
                                                      color: colorPage.primaryColor,
                                                      fontWeight: FontWeight.w700,
                                                      fontSize: width*0.06
                                                  ),)
                                              ],
                                            ),
                                            GestureDetector(
                                                onTap: (){
                                                  if(save.contains(index)){
                                                    save.remove(index);
                                                  }
                                                  else{
                                                    save.add(index);
                                                  }
                                                  setState(() {
                                                    taped[index]=!taped[index];
                                                  }
                                                  );
                                                },
                                                child: Container(
                                                    height:width*0.03,
                                                    width:width*0.03,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage(!taped[index]?imagePage.greyheart1:imagePage.redheart1),
                                                      ),


                                                    )))],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left:width*0.09),
                                        child: Row(
                                          // mainAxisAlignment: MainAxisAlignment.,
                                            children: [
                                              Text("Quantity",style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: width*0.05
                                              ),),
                                              SizedBox(width: width*0.4,),
                                              Container(
                                                height: width*0.09,
                                                width: width*0.2,
                                                decoration: BoxDecoration(
                                                    color: colorPage.ninethColor,
                                                    borderRadius: BorderRadius.circular(width*0.05),
                                                    border: Border.all(
                                                        color: colorPage.ninethColor
                                                    )
                                                ),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                  children: [
                                                    InkWell(
                                                      onTap: (){
                                                        count++;
                                                        setState(() {

                                                        });

                                                      },
                                                      child: Icon(Icons.add,color: Colors.black,),
                                                    ),
                                                    Text('$count'.toString(),
                                                      style: TextStyle(
                                                          color:Colors.black
                                                      ),),
                                                    InkWell(
                                                      onTap: (){
                                                        count<=1? 1:count--;
                                                        setState(() {

                                                        });

                                                      },
                                                      child: Icon(Icons.remove,color: Colors.black,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
//
                                            ]  ),
                                      ),
                                      Padding(
                                        padding:  EdgeInsets.only(left:width*0.09, right: width*0.07),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text("Meal Size",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: width*0.05
                                              ),),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text("Go Medium (+3 QR)",
                                                  style: TextStyle(
                                                      color: colorPage.seventhColor
                                                  ),),
                                                Checkbox(
                                                  value: checkbox1,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      checkbox1=!checkbox1;
                                                    });

                                                  },
                                                  checkColor: colorPage.secondaryColor,
                                                  fillColor: MaterialStateProperty.resolveWith((Set<MaterialState>states){
                                                    if(states.contains(MaterialState.selected)){
                                                      return Colors.deepOrange;
                                                    }
                                                    return Colors.grey[400];}

                                                  ),

                                                  activeColor: colorPage.primaryColor,
                                                  side: BorderSide(
                                                      color: Colors.white30
                                                  ),
                                                ),

                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text("Go Large (+5 QR)",
                                                  style: TextStyle(
                                                      color: colorPage.seventhColor
                                                  ),),
                                                Checkbox(
                                                  value: checkbox2,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      checkbox2=!checkbox2;
                                                    });

                                                  },
                                                  checkColor: colorPage.secondaryColor,
                                                  fillColor: MaterialStateProperty.resolveWith((Set<MaterialState>states){
                                                    if(states.contains(MaterialState.selected)){
                                                      return Colors.deepOrange;
                                                    }
                                                    return Colors.grey[400];}

                                                  ),

                                                  activeColor: colorPage.primaryColor,
                                                  side: BorderSide(
                                                      color: Colors.white30
                                                  ),
                                                ),

                                              ],
                                            ),
                                            Text("Your choices of fries",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: width*0.05
                                              ),),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text("Add herbs to fries (+3 QR)",
                                                  style: TextStyle(
                                                      color: colorPage.seventhColor
                                                  ),),
                                                Checkbox(
                                                  value: checkbox3,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      checkbox3=!checkbox3;
                                                    });

                                                  },
                                                  checkColor: colorPage.secondaryColor,
                                                  fillColor: MaterialStateProperty.resolveWith((Set<MaterialState>states){
                                                    if(states.contains(MaterialState.selected)){
                                                      return Colors.deepOrange;
                                                    }
                                                    return Colors.grey[400];}

                                                  ),

                                                  activeColor: colorPage.primaryColor,
                                                  side: BorderSide(
                                                      color: Colors.white30
                                                  ),
                                                ),

                                              ],

                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text("Add more Cheese to fries (+2 QR)",
                                                  style: TextStyle(
                                                      color: colorPage.seventhColor
                                                  ),),
                                                Checkbox(
                                                  value: checkbox4,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      checkbox4=!checkbox4;
                                                    });

                                                  },
                                                  checkColor: colorPage.secondaryColor,
                                                  fillColor: MaterialStateProperty.resolveWith((Set<MaterialState>states){
                                                    if(states.contains(MaterialState.selected)){
                                                      return Colors.deepOrange;
                                                    }
                                                    return Colors.grey[400];}

                                                  ),

                                                  activeColor: colorPage.primaryColor,
                                                  side: BorderSide(
                                                      color: Colors.white30
                                                  ),
                                                ),

                                              ],
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(right:width*0.03),
                                              child: Column(
                                                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                 crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("Your choices of drink",
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.w500,
                                                        fontSize: width*0.05
                                                    ),),


                                            SizedBox(height: width*0.05),
                                            Row(
                                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text("Kinza Lemon",
                                                  style: TextStyle(
                                                      color: colorPage.seventhColor
                                                  ),),
                                                // Checkbox(
                                                //   value: checkbox5,
                                                //   onChanged: (value) {
                                                //     setState(() {
                                                //       checkbox5=!checkbox5;
                                                //     });
                                                //
                                                //   },
                                                //   checkColor: colorPage.secondaryColor,
                                                //   fillColor: MaterialStateProperty.resolveWith((Set<MaterialState>states){
                                                //     if(states.contains(MaterialState.selected)){
                                                //       return Colors.deepOrange;
                                                //     }
                                                //     return Colors.grey[400];}
                                                //
                                                //   ),
                                                //
                                                //   activeColor: colorPage.primaryColor,
                                                //   side: BorderSide(
                                                //       color: Colors.white30
                                                //   ),
                                                // ),
                                                Container(
                                                  height: width*0.05,
                                                  width: width*0.05,
                                                  // color: Colors.red,
                                                  child: Radio(
                                                    focusColor: colorPage.primaryColor,
                                                    fillColor: MaterialStatePropertyAll(
                                                        Colors.grey[400] ),
                                                    activeColor: colorPage.primaryColor,


                                                    value: "lemon",
                                                    groupValue:gender ,
                                                    onChanged: (String?Value){
                                                      setState((){
                                                        gender= Value;
                                                      });

                                                    },


                                                  ),
                                                ),
                                              ],

                                            ),
                                            SizedBox(width: width*0.06,),
                                            SizedBox(height: width*0.05),
                                            Row(
                                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text("Kinza Orange",
                                                  style: TextStyle(
                                                      color: colorPage.seventhColor
                                                  ),),
                                                // Checkbox(
                                                //   value: checkbox6,
                                                //   onChanged: (value) {
                                                //     setState(() {
                                                //       checkbox6=!checkbox6;
                                                //     });
                                                //
                                                //   },
                                                //   checkColor: colorPage.secondaryColor,
                                                //   fillColor: MaterialStateProperty.resolveWith((Set<MaterialState>states){
                                                //     if(states.contains(MaterialState.selected)){
                                                //       return Colors.deepOrange;
                                                //     }
                                                //     return Colors.grey[400];}
                                                //
                                                //   ),
                                                //
                                                //   activeColor: colorPage.primaryColor,
                                                //   side: BorderSide(
                                                //       color: Colors.white30
                                                //   ),
                                                // ),
                                                Container(
                                                  height: width*0.05,
                                                  width: width*0.05,
                                                  // color: Colors.red,
                                                  child: Radio(
                                                    fillColor: MaterialStatePropertyAll(
                                                        Colors.grey[400]),
                                                    activeColor: colorPage.primaryColor,


                                                    value: "orange",
                                                    groupValue: gender,
                                                    onChanged: (String?Value){
                                                      setState((){
                                                        gender= Value;
                                                      });

                                                    },


                                                  ),
                                                ),

                                              ],
                                            ),
                                            SizedBox(height: width*0.05),
                                            Row(
                                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text("Kinza cola",
                                                  style: TextStyle(
                                                      color: colorPage.seventhColor
                                                  ),),
                                                //
                                                Container(
                                                  height: width*0.05,
                                                  width: width*0.05,
                                                  // color: Colors.red,
                                                  child: Radio(
                                                      fillColor: MaterialStatePropertyAll(
                                                          Colors.grey[400] ),
                                                      activeColor: colorPage.primaryColor,

                                                    value: "cola",
                                                    groupValue: gender,
                                                    onChanged: (String?Value){
                                                      setState((){
                                                        gender= Value;
                                                      });

                                                    },


                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: width*0.05),
                                            Center(
                                              child: Container(height: width*0.15,
                                                width: width*1.1,
                                                decoration: BoxDecoration(
                                                    color: colorPage.primaryColor,
                                                    borderRadius: BorderRadius.circular(width*0.05)
                                                ),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                  children: [
                                                    Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Text("TOTAL",
                                                            style: TextStyle(
                                                                fontSize: width*0.04,
                                                                color: colorPage.secondaryColor,
                                                                fontWeight: FontWeight.w800
                                                            ),),
                                                          SizedBox(width: width*0.04,),
                                                          Text("23QR",
                                                            style: TextStyle(
                                                                fontSize: width*0.06,
                                                                color: colorPage.secondaryColor,
                                                                fontWeight: FontWeight.w800
                                                            ),),]),
                                                    Text("ADD TO CART",
                                                      style: TextStyle(
                                                          fontSize: width*0.04,
                                                          color: colorPage.secondaryColor,
                                                          fontWeight: FontWeight.w800

                                                      ),
                                                    ),


                                                  ],
                                                ),
                                              ),
                                            )


                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                ]

                                    ),
                              ));
                            },

                          );
//
                        },);
                    },
                    child: Container(
                      height: width*0.6,
                      width: width*0.9,
                      decoration: BoxDecoration(
                        // color: Colors.red,
                        borderRadius: BorderRadius.circular(width*0.05),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children:[
                              Container(
                              height: width*0.4,
                              width: width*0.9,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(width*0.05),
                                image: DecorationImage(
                                  image:AssetImage(bin[index]["pic"]),fit: BoxFit.cover
                                )
                              ),

                              // color: Colors.blue,
                            ),
                              Positioned(
                                bottom: width*0.001,
                                  right: width*0.001,
                                  child: Container(
                                      height: width*0.12,
                                      width: width*0.12,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(imagePage.stack11)
                                        ),
                                      ),
                                       child: Center(child: Text("GO \nburger",
                                       style: TextStyle(
                                         color: colorPage.secondaryColor,
                                         fontSize: width*0.015
                                       ),)),
                                       // child: Image.asset(imagePage.stack11)
                                  )
                              ),
                              Positioned(
                                  top: width*0.02,
                                  right: width*0.02,
                                  child: Container(
                                      height: width*0.05,
                                      width: width*0.05,
                                      child: SvgPicture.asset(imagePage.heart1))
                                  ),
                              Positioned(
                                  bottom: width*0.01,
                                  left: width*0.01,
                                  child: Container(
                                      height: width*0.12,
                                      width: width*0.12,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(imagePage.gree1),
                                        ),
                                      ),
                                    child: Center(child: Text("15%",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: colorPage.secondaryColor
                                    ),),),
                                  ),
                              ),
                      ]
                          ),
                          Text(bin[index]["name"],
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: width*0.06,
                          ),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height:width*0.03,
                                    width: width*0.03,
                                    child: SvgPicture.asset(imagePage.ystar1)),
                                Text(bin[index]["star"],
                                style: TextStyle(
                                  fontWeight: FontWeight.w600
                                ),),
                                Text(bin[index]["des"]),
                              ],
                            ),
                            Text(bin[index]["price"],
                            style: TextStyle(
                              color: colorPage.primaryColor,
                              fontWeight: FontWeight.w600,
                              fontSize: width*0.05
                            ),)
                          ],
                        )

                        ],
                      ),

                    ),
                  );
              },
              separatorBuilder: (BuildContext context, index) {
                return SizedBox(width: width * 0.03);
              },
              itemCount: bin.length),
        ),
      Center(
        child: Container(
            height: width*0.6,
            width: width*0.9,
            decoration: BoxDecoration(
               color: Colors.red,
              borderRadius: BorderRadius.circular(width*0.05),
              image: DecorationImage(
                image: AssetImage(imagePage.loc1)
              )
            ),


        ),
      ),
        SizedBox(height:width*0.03),
        Center(
          child: AnimatedSmoothIndicator(
            activeIndex: currentindex,
            count: 3,
            effect: ExpandingDotsEffect(
              dotColor: colorPage.sixthColor,
              activeDotColor: colorPage.primaryColor,
              dotHeight: width * 0.02,
              dotWidth: width * 0.02,
            ),
          ),
        ),

      ]
      ),
    )
    )
    )
    )
    ],
    ),
      //
      // body: p

    );
          }
  }

