import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_delivery_app/home/food_page_body.dart';
import 'package:food_delivery_app/utils/colors.dart';
import 'package:food_delivery_app/utils/dimensions.dart';
import 'package:food_delivery_app/widgets/big_text.dart';
import 'package:food_delivery_app/widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      //showing the header
      Container(
          child: Container(
        margin: EdgeInsets.only(
            top: Dimensions.height45, bottom: Dimensions.height15),
        padding: EdgeInsets.only(
            left: Dimensions.height20, right: Dimensions.height20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                BigText(text: "Bangladesh", color: AppColors.mainColor),
                Row(
                  children: [
                    SmallText(text: "Narsingdi", color: Colors.black54),
                    const Icon(Icons.arrow_drop_down_rounded),
                  ],
                )
              ],
            ),
            Container(
              width: Dimensions.width45,
              height: Dimensions.height45,
              child: Icon(
                Icons.search,
                color: Colors.white,
                size: Dimensions.iconSize24,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius15),
                color: AppColors.mainColor,
              ),
            ),
          ],
        ),
      )),

      //showing the body
      FoodPageBody(),
    ]));
  }
}
