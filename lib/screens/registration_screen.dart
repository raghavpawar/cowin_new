import 'package:cowin_new/components/custom_call_to_action_button.dart';
import 'package:cowin_new/components/custom_drop_down.dart';
import 'package:cowin_new/components/custom_text_field.dart';
import 'package:cowin_new/constants.dart';
import 'package:cowin_new/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:getwidget/getwidget.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  String dropdownValue = 'State';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: width / 12,
            right: 0,
            child: SvgPicture.asset('assets/illustrations/virus_right.svg'),
          ),
          Positioned(
            left: 0,
            bottom: width / 1.55,
            child: SvgPicture.asset('assets/illustrations/virus_left.svg'),
          ),
          Positioned(
            right: width / 9.75,
            bottom: width / 1.4,
            child: SvgPicture.asset('assets/illustrations/virus_small_1.svg'),
          ),
          Positioned(
            right: width / 2.3,
            bottom: width / 1.5,
            child: SvgPicture.asset('assets/illustrations/virus_small_2.svg'),
          ),
          Positioned(
            right: width / 17.7,
            bottom: width / 3.3,
            child: SvgPicture.asset('assets/illustrations/virus_small_3.svg'),
          ),
          Container(
            padding: EdgeInsets.only(top: height / 14.7),
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(width / 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'coWIN',
                          style: poppins(
                            fontSize: fontSize(context, size: 'large'),
                            color: primaryColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: width / 17.2),
                        CustomTextField(
                          labelText: 'Pincode',
                        ),
                        SizedBox(
                          height: width / 17.2,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: width / 20),
                          child: Text(
                            'OR',
                            style: roboto(
                                fontSize: fontSize(
                                  context,
                                  size: 'mediumLarge',
                                ),
                                color: Color(0xFF001833),
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        SizedBox(height: width / 17.2),
                        CustomDropDown(dropDownValue: 'State'),
                        SizedBox(
                          height: width / 22.5,
                        ),
                        CustomDropDown(dropDownValue: 'State'),
                        // DropDowns(),
                        // StateDropDownNew(),
                        // SizedBox(height: width / 20),
                        // DistrictDropDownNew(),
                        SizedBox(
                          height: width / 15,
                        ),
                        SearchButton(
                          buttonText: 'Search',
                          color: primaryColor,
                          textColor: Colors.white,
                          onPressedCallback: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MainScreen(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: width / 12.6,
            right: width / 8.2,
            child: Image.asset('assets/illustrations/doctor.png'),
          ),
        ],
      ),
    );
  }
}
