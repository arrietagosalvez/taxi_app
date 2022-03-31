import 'package:flutter/material.dart';

class ButtonApp extends StatelessWidget {



  Color? color;
  Color? textColor;
  String? text;

  ButtonApp({

    @required this.color = Colors.indigo,
    @required this.textColor = Colors.black12,
    @required this.text = 'Button',
  });

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        onPressed: (){},
        color: color,
        child: Text('text'),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))
    );
  }
}
