import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tap_for_tiffin/widgets/app_color.dart';
import 'package:tap_for_tiffin/widgets/big_text.dart';
import 'package:tap_for_tiffin/widgets/icon_text_widget.dart';
import 'package:tap_for_tiffin/widgets/small_text.dart';

import '../../utils/tiffin_delivery_dimensions.dart';

class TiffinPageBody extends StatefulWidget {
  const TiffinPageBody({Key? key}) : super(key: key);

  @override
  _TiffinPageBodyState createState() => _TiffinPageBodyState();
}

class _TiffinPageBodyState extends State<TiffinPageBody> {
  PageController pageController= PageController(viewportFraction: 0.85);
  var _currPageValue=0.0;
  double _scaleFactor=0.8;
  double _height= Dimensions.pageViewContainer;

  @override
   void initState(){
    super.initState();
    pageController.addListener(() {
        setState(() {
          _currPageValue=pageController.page!;

        });
      });


  }
  @override
  void dispose(){
    pageController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.grey,
          height: Dimensions.pageView,
          child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context, position ){
                return _buildPageItem(position);
              }),
        ),
    new DotsIndicator(
    dotsCount: 5,
    position: _currPageValue,
    decorator: DotsDecorator(
    size: const Size.square(9.0),
    activeSize: const Size(18.0, 9.0),
    activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
    ),
    ),
        //Trending text
        SizedBox(height: Dimensions.height30,),
        Container(
          margin: EdgeInsets.only(left: Dimensions.width30),
          child: Row(
            children: [
              BigText(text: "Trending"),
              SizedBox(width: Dimensions.width10 ,),
              Container(
                margin: const EdgeInsets.only(bottom: 3),
                child: BigText(text: ".", color: Colors.black, ),
              )  ,

              SizedBox(width: Dimensions.width10 ,),
              Container(
                margin: const EdgeInsets.only(bottom: 0),
                child: SmallText(text: "Home Made Food",),
              )
            ],
          ),
        ),
        //list of food and images


           ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index){
                return Container(
                  margin: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20,bottom: Dimensions.height10),
                  child: Row(
                    children: [
                      //image section
                         Container(
                          width:Dimensions.listViewImgSize,
                          height: Dimensions.listViewImgSize,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(Dimensions.radius20),
                              color: Colors.white38,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                  image: AssetImage(
                                      "assets/roti.jpg"
                                  )
                              )
                          ),
                        ),

                      // text section
                      Expanded(
                        child: Container(
                          height: Dimensions.listViewTextContSize,
                          
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(Dimensions.radius20),
                              bottomRight: Radius.circular(Dimensions.radius20),
                            ),
                            color: Colors.white
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: Dimensions.width10,right: Dimensions.width10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                BigText(text: "Whole Wheat Chapatis(Roti)"),
                                SizedBox(height: Dimensions.height10,),
                                SmallText(text: "Rich in Neutrients"),
                                SizedBox(height: Dimensions.height10,),
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
                                )


                              ],
                            ),
                         ),
                        ),
                        
                      )
                       ],
                  ),

                );
              }
          ),

      ],
    );
  }
  Widget _buildPageItem(int index){
    Matrix4 matrix = new Matrix4.identity();
    if(index==_currPageValue.floor()){
      var currScale =1-(_currPageValue-index)*(1-_scaleFactor);
      var currTrans =_height*(1-currScale)/2;
      matrix =Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0,currTrans,0);
    }else if(index ==_currPageValue.floor()+1){
      var currScale = _scaleFactor+(_currPageValue-index+1)*(1-_scaleFactor);
      var currTrans = _height*(1-currScale)/2;
      matrix =Matrix4.diagonal3Values(1, currScale, 1);
      matrix =Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0,currTrans,0);

    }else if(index ==_currPageValue.floor()-1) {
      var currScale = _scaleFactor +
          (_currPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    }
      return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: Dimensions.pageViewContainer,
            margin: EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius30),
                color: index.isEven?Color(0xFF69c5df):Color(0xFF9294cc),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                        'assets/tiffin-png-about-us-234.png'
                    ),
                )


            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimensions.pageViewTextContainer,
              margin: EdgeInsets.only(left: Dimensions.width30, right:Dimensions.width30, bottom: Dimensions.height30,),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFFe8e8e8),
                        blurRadius:5.0,
                    offset:  Offset(0,5),
                  ),
                  BoxShadow(
                      color: Colors.white,
                      blurRadius: 5.0,
                      offset: Offset(-5,0)
                  )
    ]
              ),
              child:Container(
                     padding: EdgeInsets.only(top: Dimensions.height15, left: 15, right: 15) ,
                     child: AppColor(text: "Special Tiffin",),
                   ),



          ),


          )
        ],
      ),
    );


  }

}
