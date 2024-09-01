
import 'package:bitezy/utils/Colors/All_Colors.dart';
import 'package:bitezy/widgets/Custom_Text_widgets.dart';
import 'package:bitezy/widgets/scroll_food_item.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class main_home_Screen extends StatefulWidget {
  const main_home_Screen({super.key});

  @override
  State<main_home_Screen> createState() => _main_home_ScreenState();
}

class _main_home_ScreenState extends State<main_home_Screen> {
  int currentIndex = 0; // To keep track of the current index

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
                            Padding(
                              padding: const EdgeInsets.only(left: 4, right: 15),
                              child: Row(
                                children: [
                                  Image.asset("assets/images/india-flag-icon.png", height: 20, width: 20),
                                  SizedBox(width: 5),
                                  bigtext_20_w400(text: "India", weight: FontWeight.w600),
                                ],
                              ),
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
            ],
          ),
        ),
      ),
    );
  }
}
