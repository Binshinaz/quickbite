import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quickbite/colorpage.dart';
import 'package:quickbite/imagepage.dart';

import 'main.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  List save=[];
  List iteams=["All","Go Crispy Original","Extreme Meal","Bucket Meal","Kids Meals"];
  int total=0;
  int selectedindex=0;
  List bin=[{
    "pic":"assets/images/fillet.png",
    "name":"fish fillet",
    "price":"23 QR",
    "category":"Go Crispy Original",
    "des":" fishgrill,mayonise, drink",
    "star":"3.5",
  },
    {"pic":"assets/images/burger.png",
      "name":"Slaider shrimpo",
      "price":"33 QR",
      "des":"shrimb burger,friese,drink",
      "category":"Go Crispy Original",
      "star":"4.5",    },
    {"pic":"assets/images/french.png",
      "name":" french fries",
      "price":"10 QR",
      "category":"Go Crispy Original",
      "des":"french fries,mayonise,drink",
      "star":"4.0",
    },
    {"pic":"assets/images/kfc.jpg",
      "name":" kfc",
      "price":"40 QR",
      "category":"Bucket Meal",
      "des":"12 piece chicken,drink",
      "star":"4.0",
    },
    {"pic":"assets/images/meals.png",
      "name":" meals",
      "price":"30 QR",
      "category":"Extreme Meal",
      "des":"upperi,payasam,",
      "star":"5.0",
    },
    {"pic":"assets/images/kids.png",
      "name":" mixed fruits",
      "price":"20 QR",
      "category":"Kids Meals",
      "des":"banana, bread,apple,oats,drink",
      "star":"4.0",
    },
  ];
  List<bool>taped=List.generate(6, (index) => false);

  List category=["All","Go Crispy Original","Extreme Meal","Bucket Meal","Kids Meals"];
  var cat=[];
  addcate(int index){
    cat=[];
    for(var data in bin){
      print("${iteams[index]} === ${data["category"]}daaa");
      if(iteams[index]==data["category"]){
        print(data);
        cat.add(data);
        setState(() {

        });
      }
      // print('jii');
      // print(cat);
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        // backgroundColor: colo.primaryColor,
        leading:Container(
          height: width*0.2,
          width: width*0.2,
          child: Icon(Icons.arrow_back_ios_new_outlined)

        ),
        title: Text("All categories",
          style: TextStyle(
            fontSize: width*0.05,
            fontWeight: FontWeight.w700,
            // color:colorPage.thirdColor,
          ),

        ),

      ),
      body: Padding(
        padding:  EdgeInsets.all(width*0.05),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: height*0.07,
              width: width*1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width*0.05),
                border: Border.all(color:colorPage.secondaryColor)
              ),
              child: ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      addcate(index); // print(index);
                      setState(() {
                        selectedindex=index;
                      });
                    },
                    child: Container(
                      height: height*0.05,
                      width: width*0.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(width*0.03),
                        border: Border.all(color: colorPage.seventhColor),
                        color: selectedindex==index?colorPage.primaryColor:colorPage.seventhColor,
                      ),
                      child: Center(child: Text(iteams[index],
                        style: TextStyle(color: colorPage.secondaryColor,fontSize: width*0.045),)),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(width: width*0.03,);
                }, itemCount: iteams.length,
              ),
            ),
            SizedBox(height: width*0.03,),
            Expanded(
                child: Container(
                    child: ListView.separated(
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          //
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Stack(
                                children:[ Container(
                                  height: height*0.2,
                                  width: width*0.9,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(width*0.03),
                                    color: colorPage.secondaryColor,
                                    border: Border.all(color: colorPage.seventhColor)

                                  ),
                                  child: Row(
                                     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                          height: width*0.32,
                                          width: width*0.28,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(width*0.05),
                                          ),
                                          child: Image(
                                            image:AssetImage(selectedindex==0?bin[index]["pic"]:cat[index]["pic"]),
                                            fit: BoxFit.cover,)),
                                      SizedBox(width: width*0.03,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(selectedindex==0?bin[index]["name"]:cat[index]["name"],
                                                style: TextStyle(color: Colors.black,
                                                fontWeight: FontWeight.w800,
                                                fontSize: width*0.06),),

                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                height:width*0.03,
                                                  width: width*0.04,
                                                  child: SvgPicture.asset(imagePage.ystar1)),
                                              Text(selectedindex==0?bin[index]["star"]:cat[index]["star"],
                                              style: TextStyle(
                                                fontWeight: FontWeight.w700
                                              ),)
                                            ],
                                          ),
                                          Text(selectedindex==0?bin[index]["des"]:cat[index]['des'],
                                          style: TextStyle(
                                            color: colorPage.seventhColor
                                          ),),
                                          Text(bin[index]["price"].toString(),
                                          style: TextStyle(
                                            color: colorPage.primaryColor,
                                            fontWeight: FontWeight.w700,
                                            fontSize: width*0.05
                                          ),),
                                        ],
                                      ),
                                  // SvgPicture.asset(imagePage.heart1,
                                  // color: colorPage.seventhColor,)

                                  //
                                    ],
                                  ),
                                  //
                                ),
                                  Positioned(
                                    top:width*0.01,
                                      right:width*0.01,
                                      child: GestureDetector(
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
                                                image: AssetImage(!taped[index]?imagePage.greyheart1:imagePage.redheart1)
                                              )
                                            ),
                                            // child: SvgPicture.asset(save.contains(index)?imagePage.heart1:imagePage.redheart1,)
                                        ),
                                      ))
                          ]
                              ),
                              

                            ],
                          );
                        }, separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(height:  width*0.03,);
                    },
                        itemCount: selectedindex==0?bin.length:cat.length
                    )
                )

            )
          ],
        ),
      ),

    );
  }
}
