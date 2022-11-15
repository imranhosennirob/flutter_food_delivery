import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/expandable_text_widget.dart';

import '../../utils/dimensions.dart';

class RecommendedFoodDetail extends StatefulWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  State<RecommendedFoodDetail> createState() => _RecommendedFoodDetailState();
}

class _RecommendedFoodDetailState extends State<RecommendedFoodDetail> {
  @override
  Widget build(BuildContext context) {
    Dimensions().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear, iconBgColor: Colors.white, iconSize: 24),
                AppIcon(icon: Icons.shopping_cart_outlined, iconBgColor: Colors.white, iconSize: 24),
              ],
            ),
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(20),
                child: Container(
                  child: Center(
                    child:
                        BigText(size: 26, text: 'Creole Rice Side Dish Recipe'),
                  ),
                  width: double.maxFinite,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                  ),
                )),
            pinned: true,
            backgroundColor: Colors.yellow,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/food0.png',
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  child: ExpandableTextWidget(text: 'The indefinite article takes two forms. It’s the word a when it precedes a word that begins with a consonant. It’s the word an when it precedes a word that begins with a vowel. The indefinite article indicates that a noun refers to a general idea rather than a particular thing. For example, you might ask your friend, “Should I bring a gift to the party?” Your friend will understand that you are not asking about a specific type of gift or a specific item. “I am going to bring an apple pie,” your friend tells you. Again, the indefinite article indicates that she is not talking about a specific apple pie. Your friend probably doesn’t even have any pie yet. The indefinite article only appears with singular nouns. Consider the following examples of indefinite articles used in context.The indefinite article takes two forms. It’s the word a when it precedes a word that begins with a consonant. It’s the word an when it precedes a word that begins with a vowel. The indefinite article indicates that a noun refers to a general idea rather than a particular thing. For example, you might ask your friend, “Should I bring a gift to the party?” Your friend will understand that you are not asking about a specific type of gift or a specific item. “I am going to bring an apple pie,” your friend tells you. Again, the indefinite article indicates that she is not talking about a specific apple pie. Your friend probably doesn’t even have any pie yet. The indefinite article only appears with singular nouns. Consider the following examples of indefinite articles used in context.'),
                  padding: EdgeInsets.only(left: 20, right: 20),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: 50,
              right: 50,
              top: 10,
              bottom: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  iconSize: 24,
                  iconColor: Colors.white,
                  iconBgColor: Colors.cyan,
                  icon: Icons.remove,
                ),
                BigText(text: "\$12.88"+" X "+"0"),
                AppIcon(
                    iconSize: 24,
                    iconColor: Colors.white,
                    iconBgColor: Colors.cyan,
                    icon: Icons.add),
              ],
            ),
          ),
          Container(
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
                  child: Icon(
                    Icons.favorite,
                    color: Colors.cyan,
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
        ],
      ),
    );
  }
}
