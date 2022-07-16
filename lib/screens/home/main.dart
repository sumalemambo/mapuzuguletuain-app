import 'package:flutter/material.dart';

import 'components/about.dart';
import 'components/date_box.dart';
import 'components/word_of_the_day_title_box.dart';
import 'components/word_of_the_day_card.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [AboutCard(),Spacer(),DateBox()]),
          Flexible(
            child:ListView(
              children:const [
                Padding(
                  padding: EdgeInsets.all(18.0),
                  child: WordOfTheDayTitleBox(),
                ),
                WordOfTheDayCard(),
              ]
            ),
          ),
        ],
      ),
    );
  }
}