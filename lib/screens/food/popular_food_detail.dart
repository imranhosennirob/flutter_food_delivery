import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/app_column.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/expandable_text_widget.dart';

class PopularFoodDetail extends StatelessWidget {
  PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Dimensions().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // background image
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                  width: double.maxFinite,
                  height: 350,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/food0.png"))))),
          // top icon
          Positioned(
              left: 20,
              right: 20,
              top: 32,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(
                    icon: Icons.arrow_back_ios,
                  ),
                  AppIcon(
                    icon: Icons.shopping_cart_outlined,
                  )
                ],
              )),
          // bottom content
          Positioned(
            left: 0,
            right: 0,
            top: 330,
            bottom: 0,
            child: Container(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppColumn(text: 'Chinese Side'),
                    SizedBox(
                      height: 20,
                    ),
                    BigText(text: 'Introduce'),
                    SizedBox(
                      height: 10,
                    ),
                    const Expanded(
                        child: SingleChildScrollView(
                            child: ExpandableTextWidget(
                                text:
                                    'Food Lounge. The imagination of our chefs '
                                        'will never bore you with always different '
                                        'and delicious dishes. The attention in choice '
                                        'of genuine and local ingredients will relax you '
                                        'The accurate service, the elegance of our dining '
                                        'halls will make you feel at ease. The availability '
                                        'of our friendly staff will pamper you. And you\'ll '
                                        'come back for more. We promise.Food Lounge. The imagination of our chefs '
                                        'will never bore you with always different '
                                        'and delicious dishes. The attention in choice '
                                        'of genuine and local ingredients will relax you '
                                        'The accurate service, the elegance of our dining '
                                        'halls will make you feel at ease. The availability '
                                        'of our friendly staff will pamper you. And you\'ll '
                                        'come back for more. We promise.Food Lounge. The imagination of our chefs '
                                        'will never bore you with always different '
                                        'and delicious dishes. The attention in choice '
                                        'of genuine and local ingredients will relax you '
                                        'The accurate service, the elegance of our dining '
                                        'halls will make you feel at ease. The availability '
                                        'of our friendly staff will pamper you. And you\'ll '
                                        'come back for more. We promise.Food Lounge. The imagination of our chefs '
                                        'will never bore you with always different '
                                        'and delicious dishes. The attention in choice '
                                        'of genuine and local ingredients will relax you '
                                        'The accurate service, the elegance of our dining '
                                        'halls will make you feel at ease. The availability '
                                        'of our friendly staff will pamper you. And you\'ll '
                                        'come back for more. We promise.'
                            )
                        )
                    )
                  ],
                )),
          ),
          // expendable text widget
        ],
      ),
      bottomNavigationBar: Container(
        height: 100,
        padding: EdgeInsets.only(top: 30, bottom: 30, left: 20, right: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
            color: Colors.black12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.remove,
                    color: Colors.black38,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  BigText(text: '0'),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.add,
                    color: Colors.black38,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: BigText(
                text: '\$10 | Add to cart',
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blueGrey),
            ),
          ],
        ),
      ),
    );
  }
}
