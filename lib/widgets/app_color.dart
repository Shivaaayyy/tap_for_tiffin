

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tap_for_tiffin/widgets/small_text.dart';

import '../utils/tiffin_delivery_dimensions.dart';
import 'big_text.dart';
import 'icon_text_widget.dart';

class AppColor extends StatelessWidget {
  final String text;
  const AppColor({Key? key,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: text, size: Dimensions.font26,),
        SizedBox(height: Dimensions.height10,),
        Row(
          children: [
            Wrap(
              children: List.generate(5, (index) => Icon(Icons.star, color: Colors.blueAccent, size: 15,)),
            ),
            SizedBox(width: 10,),
            SmallText(text: "5",),
            SizedBox(width: 10,),
            SmallText(text: "1234"),
            SizedBox(width: 10,),
            SmallText(text: "Reviews")
          ],
        ),
        SizedBox(height: Dimensions.height20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [IconTextWidget(icon: Icons.location_on,
              text: "1km",
              iconColor:Colors.cyan ),
            IconTextWidget(icon: Icons.access_time_rounded,
                text: "30min",
                iconColor:Colors.yellow ),
            IconTextWidget(icon: Icons.message,
                text: "150 comments",
                iconColor:Colors.brown ),


          ],
        ),

      ],
    );
  }
}
