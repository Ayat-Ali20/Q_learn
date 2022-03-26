import 'package:flutter/material.dart';
import 'package:q_learn/constraint.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback pres;

  final Color color, textColor;

  // ignore: use_key_in_widget_constructors
  const RoundedButton({

    required this.text,
    required this.pres,
    required this.color,

    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.91,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100.0),
                  side: BorderSide(color:kPrimaryColor , width: 1 , style: BorderStyle.solid ),
              )),
          padding:
          MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.all(15)),
          backgroundColor: MaterialStateProperty.all<Color>(color),
          foregroundColor: MaterialStateProperty.all<Color>(textColor),
        ),
        // style: ElevatedButton.styleFrom(
        //     shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.circular(20),
        // ),
        //
        // ),
        onPressed: pres,
        child: Text(text),
      ),
    );
  }
}