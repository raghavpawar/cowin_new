import 'package:cowin_new/constants.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class CustomDropDown extends StatefulWidget {
  CustomDropDown({required this.dropDownValue});
  String dropDownValue;

  @override
  _CustomDropDownState createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: width / 8,
      width: MediaQuery.of(context).size.width,
      child: DropdownButtonHideUnderline(
        child: GFDropdown(
          hint: Text('State'),
          style: poppins(
            fontSize: fontSize(context, size: 'small'),
            color: Color(0xFF667485),
          ),
          padding: EdgeInsets.only(
            left: width / 25,
            right: width / 25,
          ),
          borderRadius: BorderRadius.circular(5),
          border: BorderSide(color: Color(0xFFB3BAC2), width: 1),
          dropdownButtonColor: Colors.white,
          value: widget.dropDownValue,
          onChanged: (newValue) {
            setState(() {
              widget.dropDownValue = newValue.toString();
            });
          },
          items: ['State', 'Monthly', 'Yearly']
              .map((value) => DropdownMenuItem(
                    value: value,
                    child: Text(value),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
