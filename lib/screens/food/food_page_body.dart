import 'package:flutter/cupertino.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff00ffff),
      height: 320,
      child: PageView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return _buildPageItem(index);
        },
      ),
    );
  }

  Widget _buildPageItem(int index) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(left: 5, right: 5),
          height: 220,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: index.isEven ? Color(0xff69c5df) : Color(0xff9294cc),
            image: DecorationImage(
              image: AssetImage('assets/images/food1.png'),
            ),
          ),
        ),
        //55:18
        Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          height: 220,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: index.isEven ? Color(0xff69c5df) : Color(0xff9294cc),
            image: DecorationImage(
              image: AssetImage('assets/images/food1.png'),
            ),
          ),
        ),
      ],
    );
  }
}
