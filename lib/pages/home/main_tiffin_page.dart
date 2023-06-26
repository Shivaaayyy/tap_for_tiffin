import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tap_for_tiffin/pages/home/tiffin_page_body.dart';
import 'package:tap_for_tiffin/utils/tiffin_delivery_dimensions.dart';
import 'package:tap_for_tiffin/widgets/big_text.dart';
import 'package:tap_for_tiffin/widgets/small_text.dart';

class MainTiffinPage extends StatefulWidget {
  const MainTiffinPage({Key? key}) : super(key: key);

  @override
  _MainTiffinPageState createState() => _MainTiffinPageState();
}

class _MainTiffinPageState extends State<MainTiffinPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              child:Container(
                margin: EdgeInsets.only(top:Dimensions.height45, bottom: Dimensions.height15),
                padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            BigText(text: "India",color: Colors.red,),
                            Row(
                              children: [
                                SmallText(text: "Chennai", color: Colors.black54,),
                                Icon(Icons.arrow_drop_down_rounded)
                              ],
                            )
                            
                          ],
                        )
                      ],
                    ),
                    Container(
                      width: Dimensions.height45,
                      height: Dimensions.height45,
                      child: Icon(Icons.search, color: Colors.white, size: Dimensions.iconsize24),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius15),
                        color: Colors.blue,

                      ),


                    )
                  ],

                ),
              )
          ),
          Expanded(child: SingleChildScrollView(
            child: TiffinPageBody(),
          )),
        ],
      )
    )
    ;

  }
}
