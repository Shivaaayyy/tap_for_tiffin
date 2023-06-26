import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tap_for_tiffin/utils/tiffin_delivery_dimensions.dart';
import 'package:tap_for_tiffin/widgets/app-icon.dart';
import 'package:tap_for_tiffin/widgets/app_color.dart';
import 'package:tap_for_tiffin/widgets/expandable_text.dart';
import '../../../widgets/big_text.dart';


class FoodDetail extends StatelessWidget {
  const FoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //background image
          Positioned(
              left: 0,
              right: 0,

              child: Container(
                width: double.maxFinite,
                height: Dimensions.FoodimgSize,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                            "assets/tiffin-png-about-us-234.png"
                        )
                    )
                ),

              )),
          //icon widget
          Positioned(
              top: Dimensions.height45,
              left: Dimensions.width20,
              right: Dimensions.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon: Icons.arrow_back_ios),
                  AppIcon(icon: Icons.shopping_basket_outlined),


                ],

              )),
          //introduction
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: Dimensions.FoodimgSize - 10,
              child: Container(
                padding: EdgeInsets.only(
                    left: Dimensions.width20, right: Dimensions.height20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(Dimensions.radius20),
                      topLeft: Radius.circular(Dimensions.radius20),


                    ),
                    color: Colors.white
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppColor(text: "Special Tiffin"),
                    SizedBox(height: Dimensions.height20,),
                    BigText(text: "About"),
                    SizedBox(height: Dimensions.height20,),
                    Expanded(child: SingleChildScrollView(child: ExpandableText(text: "Dal chawal, roti, and sabji is a perfect, healthy, balanced, delicious, 600 calories meal. This vegetarian food platter is a staple in North India. It has a combination of protein, carbohydrate, vitamin, minerals etc.This tiffin combo provides you dal chawal roti and sabzi  and various vegetable salad as per weather avalablity  It contains a very budget prices along with choices and multiple cousines It has 200gm of rice , 4 chapatis one dry mix vegetable, one curry , desserts, salad and cleanliness it has homemade specality and kepps you out of low quality food tension order it now!"))),

                  ],
                ),
              )),
          //exandable text
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeight,
        padding: EdgeInsets.only(top: Dimensions.height30, bottom: Dimensions.height30,left: Dimensions.width20,right: Dimensions.width20),
        decoration: BoxDecoration(
          color: Colors.lightBlueAccent,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius20*2),
            topRight:  Radius.circular(Dimensions.radius20*2),
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(top: Dimensions.height20,bottom: Dimensions.height20,left: Dimensions.width20, right: Dimensions.width20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Icon(Icons.remove, color: Colors.black,),
                  SizedBox(width: Dimensions.width10/2, ),
                  BigText(text: "0"),
                  SizedBox(width: Dimensions.width10/2,),
                  Icon(Icons.add,color:Colors.black87,),
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.only(top: Dimensions.height20,bottom: Dimensions.height20,left: Dimensions.width20, right: Dimensions.width20),

              child: BigText(text: "₹ 100 | Add to cart"),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20,),
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}



