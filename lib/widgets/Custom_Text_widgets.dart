import 'dart:ui';

import 'package:bitezy/utils/Colors/All_Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

Widget bigtext_20_w400(
{
  required String text,
  double? size,
  Color? textcolor,
  FontWeight? weight,

}){
  return Text(
    text,style:GoogleFonts.roboto(fontSize: size ?? 20,color:textcolor ?? all_colors.mainColor,fontWeight: weight?? FontWeight.w400),overflow: TextOverflow.ellipsis,
  );
}
Widget small_text_15_w400(
    {
      required String text,
      double? size,
      Color? textcolor,
      FontWeight? weight,

    }){
  return Text(
    text,style:GoogleFonts.roboto(fontSize:  size ?? 15,color: textcolor ?? all_colors.smalltextColor,fontWeight: weight?? FontWeight.w400),overflow: TextOverflow.ellipsis,
  );
}

class iconandtext extends StatelessWidget {


  final String text;
  final IconData icon;
  final Color textcolor;
  final Color iconColor;

  const iconandtext({
    super.key,
  required this.text,
    required this.icon,
    required this.iconColor,
    required this.textcolor

  });


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon,color: iconColor,),
        SizedBox(width: 5,),
        small_text_15_w400(text: text,textcolor: textcolor)
      ],
    );

  }
}
