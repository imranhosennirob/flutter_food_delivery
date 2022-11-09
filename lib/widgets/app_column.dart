import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/small_text.dart';

import 'big_text.dart';
import 'icon_and_text_wedget.dart';

class AppColumn extends StatelessWidget {

  final String text;

  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // first line
        BigText(text: text),
        Container(
          height: 10,
        ),
        // second row with star ratting and comments
        Row(
          children: [
            Wrap(
                children: List.generate(
                    5,
                    (index) => const Icon(
                          Icons.star,
                          color: Colors.blueGrey,
                          size: 15,
                        ))),
            const SizedBox(
              width: 10,
            ),
            SmallText(text: "4.5"),
            const SizedBox(
              width: 10,
            ),
            SmallText(text: '1287'),
            const SizedBox(
              width: 10,
            ),
            SmallText(text: 'Comments'),
          ],
        ),
        Container(
          height: 20,
        ),
        // third row with icon and text
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            IconAndTextWedget(
              icon: Icons.circle_sharp,
              text: 'Normal',
              iconColor: Colors.blue,
            ),
            IconAndTextWedget(
              icon: Icons.location_on,
              text: '1.7km',
              iconColor: Colors.cyan,
            ),
            IconAndTextWedget(
              icon: Icons.access_time_rounded,
              text: '32min',
              iconColor: Colors.grey,
            ),
          ],
        ),
      ],
    );
  }
}
