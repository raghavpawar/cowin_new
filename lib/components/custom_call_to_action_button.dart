import 'package:cowin_new/constants.dart';
import 'package:flutter/material.dart';

class SearchButton extends StatelessWidget {
  final String buttonText;
  final Color color;
  final Color textColor;
  final Function onPressedCallback;
  SearchButton(
      {required this.buttonText,
      required this.color,
      required this.textColor,
      required this.onPressedCallback});
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: width / 8.2,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(4),
      ),
      width: width / 3.12,
      child: TextButton(
        onPressed: () => onPressedCallback(),
        style: TextButton.styleFrom(
          padding: EdgeInsets.all(width / 30),
        ),
        child: Text(
          buttonText,
          style: poppins(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
