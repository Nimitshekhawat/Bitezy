import 'package:bitezy/widgets/Custom_Text_widgets.dart';
import 'package:flutter/material.dart';

import '../utils/Colors/All_Colors.dart';

class Food_picplusdetails extends StatelessWidget {
  final String maintext;
  final String subtext;
  final String pic_path;
  final Color normal_color;
  final String normal_text;
  final String distance;
  final String time;



  const Food_picplusdetails({
    super.key,
    required this.pic_path,
    required this.maintext,
    required this.subtext,
    required this.normal_color,
    required this.normal_text,
    required this.distance,
    required this.time

  });



  @override
  Widget build(BuildContext context) {
    return Container(

      height: MediaQuery.of(context).size.height*0.14,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.22,
            width: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20)
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                pic_path,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Container(
              height: 90,
              width: MediaQuery.of(context).size.width*0.59,
              decoration:BoxDecoration(
                borderRadius:  BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20), ),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 3,
                    ),
                    bigtext_20_w400(text: maintext,weight: FontWeight.w500),
                    SizedBox(
                      height: 1,
                    ),
                    small_text_15_w400(text: subtext,textcolor:Colors.black26),
                   SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(right: 7),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          iconandtext(text: normal_text, icon: Icons.circle, iconColor: normal_color, textcolor: all_colors.smalltextColor),
                          iconandtext(text: distance, icon: Icons.location_on_sharp, iconColor: Colors.red, textcolor: all_colors.smalltextColor),
                          iconandtext(text: time, icon: Icons.timelapse_outlined, iconColor: Colors.orange, textcolor: all_colors.smalltextColor),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
