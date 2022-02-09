import 'package:cowin_new/constants.dart';
import 'package:flutter/material.dart';

class VaccineInfoTile extends StatefulWidget {
  const VaccineInfoTile({Key? key}) : super(key: key);

  @override
  _VaccineInfoTileState createState() => _VaccineInfoTileState();
}

class _VaccineInfoTileState extends State<VaccineInfoTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: width / 22.5,
        horizontal: width / 22.5,
      ),
      margin: EdgeInsets.only(top: width / 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Color(0xffeaeaea),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0x14000000),
            blurRadius: 6,
            offset: Offset(0, 4),
          ),
        ],
        color: Color(0xfffbfbfb),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Covishield',
                style: poppins(
                  fontSize: fontSize(context, size: 'extraSmall'),
                  fontWeight: FontWeight.w600,
                  color: secondaryColor,
                ),
              ),
              Text(
                '14 May 2021',
                style: poppins(
                  fontSize: fontSize(context, size: 'extraSmall'),
                  fontWeight: FontWeight.w600,
                  color: secondaryColor,
                ),
              ),
            ],
          ),
          SizedBox(
            height: width / 30,
          ),
          Text(
            'Bhagat Singh Colony UPHC',
            style: poppins(
              fontSize: fontSize(
                context,
                size: 'small',
              ),
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: width / 30,
          ),
          Text(
            'Bhagat Singh Colony Dehradun, Singh Colony Dehradun, Uttarakhand, 248001',
            style: poppins(
              fontSize: fontSize(
                context,
                size: 'extraSmall',
              ),
              color: Color(0xFF667485),
            ),
          ),
          SizedBox(
            height: width / 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'Price : ',
                    style: poppins(
                      fontSize: fontSize(
                        context,
                        size: 'extraSmall',
                      ),
                    ),
                  ),
                  Text(
                    'Free',
                    style: poppins(
                      fontSize: fontSize(
                        context,
                        size: 'extraSmall',
                      ),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Age : ',
                    style: poppins(
                      fontSize: fontSize(
                        context,
                        size: 'extraSmall',
                      ),
                    ),
                  ),
                  Text(
                    '45+',
                    style: poppins(
                      fontSize: fontSize(
                        context,
                        size: 'extraSmall',
                      ),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Total Doses : ',
                    style: poppins(
                      fontSize: fontSize(
                        context,
                        size: 'extraSmall',
                      ),
                    ),
                  ),
                  Text(
                    '38',
                    style: poppins(
                      fontSize: fontSize(
                        context,
                        size: 'extraSmall',
                      ),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
