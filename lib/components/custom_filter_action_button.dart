import 'package:cowin_new/constants.dart';
import 'package:flutter/material.dart';

class CustomFilterActionButton extends StatefulWidget {
  CustomFilterActionButton({required this.btnText, required this.index});
  final String btnText;
  final int index;
  @override
  State<CustomFilterActionButton> createState() =>
      _CustomFilterActionButtonState();
}

class _CustomFilterActionButtonState extends State<CustomFilterActionButton> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() {
        selectedIndex = (selectedIndex != widget.index) ? widget.index : -1;
      }),
      child: Container(
        width: width / 3.2,
        height: width / 8.2,
        margin: EdgeInsets.only(right: width / 22.5, top: width / 22.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
            color: (selectedIndex == widget.index)
                ? primaryColor
                : Color(0xffb3bac2),
            width: 1,
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0x14000000),
              blurRadius: 10,
              offset: Offset(0, 4),
            ),
          ],
          color: (selectedIndex == widget.index)
              ? Color(0xFFF3F5F9)
              : Colors.white,
        ),
        child: Center(
          child: Text(
            widget.btnText,
            style: poppins(
              fontSize: fontSize(context, size: 'small'),
              color: Color(0xFF33465C),
            ),
          ),
        ),
      ),
    );
  }
}
