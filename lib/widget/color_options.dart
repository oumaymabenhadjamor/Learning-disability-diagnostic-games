import 'dart:math';

import 'package:flutter/material.dart';

import 'color_option.dart';
import 'color_option2.dart';

class ColorOptions extends StatelessWidget {
  final int randomR;
  final int randomG;
  final int randomB;

  final Function answerChooseHandler;

  ColorOptions(this.randomR, this.randomG, this.randomB, this.answerChooseHandler);

  @override
  Widget build(BuildContext context) {
    List<int> optionList = [0, 1, 2, 3,4,5,6,7,8];

    Random random = Random();

    int answer = random.nextInt(4);

    optionList.remove(answer);


    var randomOptions = {
      answer: {'r': randomR, 'g': randomG, 'b': randomB },
      optionList[0]: {

        'r': 0,
        'g': 117,
        'b': 204
      },
      optionList[1]: {
        'r': 0,
        'g': 117,
        'b': 204
      },
      optionList[2]: {
        'r': 0,
        'g': 117,
        'b': 204
      },
      optionList[3]: {
        'r': 0,
        'g': 117,
        'b': 204
      },
      optionList[4]: {
        'r': 0,
        'g': 117,
        'b': 204
      },
      optionList[5]: {
        'r': 0,
        'g': 117,
        'b': 204
      },
      optionList[6]: {
        'r': 0,
        'g': 117,
        'b': 204
      },
      optionList[7]: {
        'r': 0,
        'g': 117,
        'b': 204
      },

    };

    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ColorOption(randomOptions[0], answerChooseHandler),
            ColorOption(randomOptions[1], answerChooseHandler),
            ColorOption(randomOptions[2], answerChooseHandler),

          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            ColorOption(randomOptions[3], answerChooseHandler),
            ColorOption(randomOptions[4], answerChooseHandler),
            ColorOption(randomOptions[5], answerChooseHandler),

          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[


            ColorOption(randomOptions[6], answerChooseHandler),
            ColorOption(randomOptions[7], answerChooseHandler),
            ColorOption(randomOptions[8], answerChooseHandler),
          ],
        ),
      ],
    );
  }
}