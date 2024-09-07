import 'package:bitezy/utils/Colors/All_Colors.dart';
import 'package:bitezy/widgets/Custom_Text_widgets.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';


class scroll_Food extends StatefulWidget {
  final Function(int) onItemFocusChanged; // Callback function

  const scroll_Food({Key? key, required this.onItemFocusChanged}) : super(key: key);

  @override
  State<scroll_Food> createState() => _scroll_FoodState();
}

class _scroll_FoodState extends State<scroll_Food> {
  List<int> data = [1, 2, 3, 4, 5];
  int indexvalue = 0; // Initialize with 0
  List<String> food_images = [
    "assets/images/burger_image.png",
    "assets/images/burger_image.png",
    "assets/images/burger_image.png",
    "assets/images/india-flag-icon.png",
    "assets/images/india-flag-icon.png",
  ];

  void _onItemFocus(int index) {
    setState(() {
      indexvalue = index;
    });

    widget.onItemFocusChanged(index); // Notify the parent widget
  }

  Widget _buildItemList(BuildContext context, int index) {
    if (index == data.length)
      return Center(
        child: CircularProgressIndicator(),
      );

    return Column(
      children: [
        Container(
          height: 300,
          width: MediaQuery.of(context).size.width * 0.95,
          child: Stack(
            children: [
              Positioned(
                left: 2,
                top: 1,
                child: Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 20, left: 15, right: 0),
                    height: 220,
                    width: MediaQuery.of(context).size.width * 0.86,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        food_images[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Card(
                  elevation: 1.7,
                  child: Container(
                    height: 110,
                    width: MediaQuery.of(context).size.width * 0.76,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 5),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 5, bottom: 6),
                          child: bigtext_20_w400(text: "Sanjay Fast Food", textcolor: Colors.black),
                        ),
                        Row(
                          children: [
                            SizedBox(width: 10),
                            Wrap(
                              children: List.generate(5, (index) => Icon(Icons.star, color: all_colors.iconcolor1, size: 15)),
                            ),
                            SizedBox(width: 10),
                            small_text_15_w400(text: "4.5", size: 15),
                            SizedBox(width: 10),
                            small_text_15_w400(text: "1000", size: 15),
                            SizedBox(width: 5),
                            small_text_15_w400(text: "comments", size: 15),
                          ],
                        ),
                        SizedBox(height: 7),
                        Padding(
                          padding: const EdgeInsets.only(left: 1, top: 6, right: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              iconandtext(text: "Normal", icon: Icons.circle, iconColor: Colors.orange, textcolor: all_colors.smalltextColor),
                              iconandtext(text: "4.5", icon: Icons.location_on_sharp, iconColor: Colors.red, textcolor: all_colors.smalltextColor),
                              iconandtext(text: "32 min", icon: Icons.timelapse_outlined, iconColor: Colors.orange, textcolor: all_colors.smalltextColor),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: ScrollSnapList(
              margin: EdgeInsets.only(left: 0,right: 0),
              itemBuilder: _buildItemList,
              duration: 500,
              itemSize: MediaQuery.of(context).size.width * 0.95,
              dynamicItemSize: true,
              onReachEnd: () {
                print('done');
              },
              itemCount: data.length,
              onItemFocus: _onItemFocus,
            ),
          ),
        ],
      ),
    );
  }
}
