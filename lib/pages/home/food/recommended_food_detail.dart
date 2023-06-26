import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tap_for_tiffin/utils/tiffin_delivery_dimensions.dart';
import 'package:tap_for_tiffin/widgets/app-icon.dart';
import 'package:tap_for_tiffin/widgets/big_text.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:tap_for_tiffin/widgets/expandable_text.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear,),
                AppIcon(icon: Icons.shopping_basket_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(

                child: Center(child: BigText(size:Dimensions.font26,text: "Special Tiffin",),),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5,bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20),
                  )
                ) ,
              ),
            ),
            pinned: true,
            backgroundColor: Colors.cyan,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/tiffin-png-about-us-234.png",
                width: double.maxFinite,
                fit: BoxFit.cover,

              ),
            ),
          ),
          SliverToBoxAdapter(
            child:Column(
              children: [
                Container(
                  child: ExpandableText(text:"Dal chawal, roti, and sabji is a perfect, healthy, balanced, delicious, 600 calories meal. This vegetarian food platter is a staple in North India. It has a combination of protein, carbohydrate, vitamin, minerals etc.This tiffin combo provides you dal chawal roti and sabzi  and various vegetable salad as per weather avalablity  It contains a very budget prices along with choices and multiple cousines It has 200gm of rice , 4 chapatis one dry mix vegetable, one curry , desserts, salad and cleanliness it has homemade specality and kepps you out of low quality food tension order it now!"),
                  margin: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20),),
              ],
            )
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20*2.5,
              right: Dimensions.width20*2.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10,

            ),
            child: Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween ,
              children: [
                AppIcon(
                    iconColor: Colors.cyan,
                    iconSize: Dimensions.iconsize24,
                    icon: Icons.remove),
                BigText(text: "\₹100" +" X" " 0",color: Colors.black87,size: Dimensions.font26,),
                AppIcon(
                    iconColor: Colors.cyan,
                    iconSize: Dimensions.iconsize24,
                    icon: Icons.add)
              ],
            ),
          ),
          Container(
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
                  child: Icon(
                    Icons.favorite,
                    color: Colors.cyan,
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
        ],
      ),
    );
  }
}
