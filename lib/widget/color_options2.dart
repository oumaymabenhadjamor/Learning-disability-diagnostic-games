import 'dart:math';

import 'package:flutter/material.dart';

import 'color_option2.dart';

class ColorOptions2 extends StatelessWidget {
  final int randomR;
  final int randomG;
  final int randomB;

  final Function answerChooseHandler;

  ColorOptions2(this.randomR, this.randomG, this.randomB, this.answerChooseHandler);

  @override
  Widget build(BuildContext context) {
    List<int> optionList = [0, 1, 2, 3,4,5,6,7,8];

    Random random = Random();

    int answer = random.nextInt(4);

    optionList.remove(answer);


    var randomOptions = {
      answer: {'r': randomR, 'g': randomG, 'b': randomB },
      optionList[0]: {

        'r': 145,
        'g': 111,
        'b': 62
      },
      optionList[1]: {
        'r': 145,
        'g': 111,
        'b': 62
      },
      optionList[2]: {
        'r': 145,
        'g': 111,
        'b': 62
      },
      optionList[3]: {
        'r': 145,
        'g': 111,
        'b': 62
      },
      optionList[4]: {
        'r': 145,
        'g': 111,
        'b': 62
      },
      optionList[5]: {
        'r': 145,
        'g': 111,
        'b': 62
      },
      optionList[6]: {
        'r': 145,
        'g': 111,
        'b': 62
      },
      optionList[7]: {
        'r': 145,
        'g': 111,
        'b': 62
      },

    };

    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ColorOption2(randomOptions[0], answerChooseHandler),
            ColorOption2(randomOptions[1], answerChooseHandler),
            ColorOption2(randomOptions[2], answerChooseHandler),

          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            ColorOption2(randomOptions[3], answerChooseHandler),
            ColorOption2(randomOptions[4], answerChooseHandler),
            ColorOption2(randomOptions[5], answerChooseHandler),

          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[


            ColorOption2(randomOptions[6], answerChooseHandler),
            ColorOption2(randomOptions[7], answerChooseHandler),
            ColorOption2(randomOptions[8], answerChooseHandler),
          ],
        ),
      ],
    );
  }
}