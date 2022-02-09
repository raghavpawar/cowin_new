import 'package:flutter/material.dart';

import '../constants.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  // final Function onSubmittedCallback;
  // final String errorMessage;
  // ignore: ,
  CustomTextField({
    required this.labelText,
    // required this.onSubmittedCallback,
    // required this.errorMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 5,
            offset: Offset(0, 4),
          ),
        ],
        color: Colors.white,
      ),
      width: width / 1.09,
      height: width / 8.3,
      child: TextField(
        cursorColor: Colors.black,
        cursorWidth: 1,
        style: roboto(
          color: primaryColor,
        ),
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffb3bac2), width: 1),
            borderRadius: BorderRadius.circular(4),
          ),
          contentPadding: EdgeInsets.symmetric(
              horizontal: width / 25, vertical: width / 29),
          label: Text(labelText),
          labelStyle: poppins(
            color: Color(0xFF667485),
          ),
          hintStyle: poppins(),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffb3bac2), width: 1),
            borderRadius: BorderRadius.circular(4),
          ),
          // errorText: errorMessage,
        ),
        // onSubmitted: (String s) => onSubmittedCallback(s),
        // controller: pincodeText,
        textInputAction: TextInputAction.search,
      ),
    );
  }
}
