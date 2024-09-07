
import 'package:bitezy/utils/Colors/All_Colors.dart';
import 'package:bitezy/widgets/Custom.Widgets.dart';
import 'package:bitezy/widgets/Custom_Text_widgets.dart';
import 'package:bitezy/widgets/scroll_food_item.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../utils/dimensions.dart';

class main_home_Screen extends StatefulWidget {
  const main_home_Screen({super.key});

  @override
  State<main_home_Screen> createState() => _main_home_ScreenState();
}

class _main_home_ScreenState extends State<main_home_Screen> {
  int currentIndex = 0; // To keep track of the current index

  List<Map<String , dynamic>> Food_shop_list=[
    {
      "image":"assets/images/burger_img.jpg",
      "title":"Kapoor fast food",
      "subtext":"national halvai",
      "normaltext":"Normal",
      "distance":"1.5",
      "time":"5min",
      "normalColor":Colors.red
    },
    {
      "image":"assets/images/sup_img.jpg",
      "title":"Uppal fast food ",
      "subtext":"punjabi ",
      "normaltext":"Normal",
      "distance":"1.5",
      "time":"5min",
      "iconColor":"Color.red",
      "normalColor":Colors.red
    },
    {
      "image":"assets/images/sandwich_img.jpg",
      "title":"Kapoor fast food",
      "subtext":"national halvai",
      "normaltext":"Normal",
      "distance":"1.5",
      "time":"5min",
      "normalColor":Colors.red
    },
    {
      "image":"assets/images/burger_image.png",
      "title":"Kapoor fast food",
      "subtext":"national halvai",
      "normaltext":"Normal",
      "distance":"1.5",
      "time":"5min",
      "normalColor":Colors.red
    },
    {
      "image":"assets/images/burger_image.png",
      "title":"Kapoor fast food",
      "subtext":"national halvai",
      "normaltext":"Normal",
      "distance":"1.5",
      "time":"5min",
      "normalColor":Colors.red
    },
    {
      "image":"assets/images/burger_image.png",
      "title":"Kapoor fast food",
      "subtext":"national halvai",
      "normaltext":"Normal",
      "distance":"1.5",
      "time":"5min",
      "normalColor":Colors.red
    },
    {
      "image":"assets/images/burger_image.png",
      "title":"Kapoor fast food",
      "subtext":"national halvai",
      "normaltext":"Normal",
      "distance":"1.5",
      "time":"5min",
      "normalColor":Colors.red
    },
    {
      "image":"assets/images/burger_image.png",
      "title":"Kapoor fast food",
      "subtext":"national halvai",
      "normaltext":"Normal",
      "distance":"1.5",
      "time":"5min",
      "normalColor":Colors.red
    },
    {
      "image":"assets/images/burger_image.png",
      "title":"Kapoor fast food",
      "subtext":"national halvai",
      "normaltext":"Normal",
      "distance":"1.5",
      "time":"5min",
      "normalColor":Colors.red
    },
  ];


  void _onScrollItemFocusChanged(int index) {
    setState(() {
      currentIndex = index; // Update the current index when focused item changes
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.015,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Image.asset("assets/images/india-flag-icon.png", height: 20, width: 20),
                                    SizedBox(width: 5),
                                    bigtext_20_w400(text: "India", weight: FontWeight.w600),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("Rohtak", style: TextStyle(fontSize: 15)),
                                    Icon(Icons.arrow_drop_down_sharp, size: 15)
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: all_colors.mainColor,
                            ),
                            child: Icon(Icons.search, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 300,
                    child: scroll_Food(onItemFocusChanged: _onScrollItemFocusChanged), // Pass the callback
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  DotsIndicator(
                    dotsCount: 5,
                    position: currentIndex.toDouble(), // Use current index for dots indicator
                    decorator: DotsDecorator(
                      size: const Size.square(9.0),
                      activeSize: const Size(18.0, 9.0),
                      activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                      color: all_colors.iconcolor1,
                        activeColor:all_colors.buttonBackgroundColor
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 11, right: 10),
                    child: Container(
              
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              bigtext_20_w400(text: "Popular",textcolor: Colors.black,weight: FontWeight.w600),
                              SizedBox(width: 6,),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: small_text_15_w400(text: ".",textcolor: Colors.black26,weight: FontWeight.bold),
                              ),
                              SizedBox(width: 5,),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 3.6),
                                child: small_text_15_w400(text: " Food pairing",textcolor: Colors.black26,size: 13),
                              ),
                              SizedBox(height: 30,)
                            ],
                          ),
                          SizedBox(height: 15,),
                          Container(
                            height: 900,
                              width: double.infinity,
                              child: ListView.builder(
                                  physics:NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount:Food_shop_list.length ,
                                  itemBuilder: (context,index){
                                    final item = Food_shop_list[index];
                                return Column(
                                  children: [
                                    Food_picplusdetails(
                                        pic_path:item['image'] ,
                                        maintext:item['title'] ,
                                        subtext:item['subtext'],
                                        normal_color: item['normalColor'],
                                        normal_text: item['normaltext'],
                                        distance:item['distance'],
                                        time:item['time']),
                                    SizedBox(
                                      height: 15,
                                    ),
              
                                  ],
                                );
              
                              }
              
              
                          )
                          )
                        ],
                      ),
                    ),
                  )
              
              
              
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
