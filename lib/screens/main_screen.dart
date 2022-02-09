import 'package:cowin_new/components/custom_app_bar.dart';
import 'package:cowin_new/components/custom_filter_action_button.dart';
import 'package:cowin_new/components/vaccine_info_tile.dart';
import 'package:cowin_new/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: width / 21),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: width / 27.7,
                    top: width / 15,
                  ),
                  child: Text(
                    'Age',
                    style: poppins(
                      fontSize: fontSize(context, size: 'small'),
                      color: boldTextColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                ScrollConfiguration(
                  behavior: MyScrollBehavior(),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CustomFilterActionButton(
                          btnText: '18-44',
                          index: 0,
                        ),
                        CustomFilterActionButton(
                          btnText: '45-64',
                          index: 1,
                        ),
                        CustomFilterActionButton(
                          btnText: '65+',
                          index: 2,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: width / 27.7,
                    top: width / 15,
                  ),
                  child: Text(
                    'Date',
                    style: poppins(
                      fontSize: fontSize(context, size: 'small'),
                      color: boldTextColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                ScrollConfiguration(
                  behavior: MyScrollBehavior(),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CustomFilterActionButton(
                          btnText: '14 May',
                          index: 3,
                        ),
                        CustomFilterActionButton(
                          btnText: '15 May',
                          index: 4,
                        ),
                        CustomFilterActionButton(
                          btnText: '16 May',
                          index: 5,
                        ),
                        CustomFilterActionButton(
                          btnText: '17 May',
                          index: 7,
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: width / 15,
                      ),
                      child: Checkbox(
                        onChanged: (value) {},
                        value: false,
                        activeColor: Colors.white,
                        checkColor: secondaryColor,
                        side: BorderSide(color: primaryColor),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: width / 15),
                      child: Text(
                        'Flexible with dates',
                        style: poppins(
                          fontSize: fontSize(context, size: 'small'),
                          color: boldTextColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.info_outlined,
                      size: width / 18,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: width / 24),
            padding: EdgeInsets.symmetric(horizontal: width / 12),
            color: primaryColor,
            height: width / 7,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Results (4)',
                  style: poppins(
                    fontSize: fontSize(context, size: 'small'),
                    color: Colors.white,
                  ),
                ),
                SvgPicture.asset('assets/icons/filter.svg'),
              ],
            ),
          ),
          Container(
            width: width,
            color: Color(0xFFE6ECF3),
            padding: EdgeInsets.symmetric(
              horizontal: width / 22.5,
              vertical: width / 22.5,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    '*tap on the card to get more details or book a slot',
                    style: poppins(
                      fontSize: fontSize(context, size: 'extraSmall'),
                      color: boldTextColor,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                VaccineInfoTile(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
