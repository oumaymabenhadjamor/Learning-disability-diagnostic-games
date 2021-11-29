import 'package:flutter/material.dart';

class ColorOption extends StatelessWidget {
  final rgb;
  final Function optionChoosenHandler;

  ColorOption(this.rgb, this.optionChoosenHandler);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: GestureDetector(
        onTap: () => optionChoosenHandler(rgb['r'], rgb['g'], rgb['b']),
        child: Container(

          margin: EdgeInsets.all(5),
          width: 85,
          height: 85,

          color: Color.fromRGBO(rgb['r'], rgb['g'], rgb['b'], 80),
        ),
      ),
    );
  }
}