import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_delivery_app/home/food_page_body.dart';
import 'package:food_delivery_app/utils/colors.dart';
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
      Container(
          child: Container(
        margin: const EdgeInsets.only(top: 45, bottom: 15),
        padding: const EdgeInsets.only(left: 20, right: 20),
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
              width: 45,
              height: 45,
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColors.mainColor,
              ),
            ),
          ],
        ),
      )),
      FoodPageBody(),
    ]));
  }
}