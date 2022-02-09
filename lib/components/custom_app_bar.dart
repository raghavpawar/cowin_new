import 'package:cowin_new/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: width / 12, right: width / 12, top: width / 11.25),
      height: width / 3.75,
      color: Color(0xFFE6ECF3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset('assets/icons/pin.svg'),
          SizedBox(width: width / 24),
          Expanded(
            flex: 4,
            child: Text(
              '201301',
              style: poppins(
                fontSize: fontSize(context, size: 'small'),
                fontWeight: FontWeight.w600,
                color: boldTextColor,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Icon(
              Icons.keyboard_arrow_down_sharp,
            ),
          ),
        ],
      ),
    );
  }
}
