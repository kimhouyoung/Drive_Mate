import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeButton extends StatefulWidget {
  const HomeButton({super.key});

  @override
  State<HomeButton> createState() => _HomeButtonWidget();
}

class _HomeButtonWidget extends State<HomeButton> {
  bool isSelect1 = false;
  bool isSelect2 = false;
  bool isSelect3 = false;
  bool isSelect4 = false;
  Color backgroundColor1 = Colors.transparent;
  Color iconColor1 = Colors.black;
  Color backgroundColor2 = Colors.transparent;
  Color iconColor2 = Colors.black;
  Color backgroundColor3 = Colors.transparent;
  Color iconColor3 = Colors.black;
  Color backgroundColor4 = Colors.transparent;
  Color iconColor4 = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              IconButton(
                style: IconButton.styleFrom(
                  backgroundColor: backgroundColor1,
                  fixedSize: Size(70, 70),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  side: BorderSide(color: Colors.black),
                ),
                onPressed: () {
                  setState(() {
                    isSelect1 = !isSelect1;
                    if (isSelect1) {
                      backgroundColor1 = Colors.black;
                      iconColor1 = Colors.white;
                    } else {
                      backgroundColor1 = Colors.transparent;
                      iconColor1 = Colors.black;
                    }
                  });
                },
                icon: SvgPicture.asset(
                  'assets/images/power.svg',
                  color: iconColor1,
                  height: 45,
                ),
              ),
              SizedBox(height: 10),
              Text('시동'),
            ],
          ),
          SizedBox(width: 20),
          Column(
            children: [
              IconButton(
                style: IconButton.styleFrom(
                  backgroundColor: backgroundColor2,
                  fixedSize: Size(70, 70),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  side: BorderSide(color: Colors.black),
                ),
                onPressed: () {
                  setState(() {
                    isSelect2 = !isSelect2;
                    if (isSelect2) {
                      backgroundColor2 = Colors.black;
                      iconColor2 = Colors.white;
                    } else {
                      backgroundColor2 = Colors.transparent;
                      iconColor2 = Colors.black;
                    }
                  });
                },
                icon: SvgPicture.asset(
                  'assets/images/lockopen.svg',
                  color: iconColor2,
                  height: 45,
                ),
              ),
              SizedBox(height: 10),
              Text('도어'),
            ],
          ),
          SizedBox(width: 20),
          Column(
            children: [
              IconButton(
                style: IconButton.styleFrom(
                  backgroundColor: backgroundColor3,
                  fixedSize: Size(70, 70),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  side: BorderSide(color: Colors.black),
                ),
                onPressed: () {
                  setState(() {
                    isSelect3 = !isSelect3;
                    if (isSelect3) {
                      backgroundColor3 = Colors.black;
                      iconColor3 = Colors.white;
                    } else {
                      backgroundColor3 = Colors.transparent;
                      iconColor3 = Colors.black;
                    }
                  });
                },
                icon: SvgPicture.asset(
                  'assets/images/one door.svg',
                  color: iconColor3,
                  height: 45,
                ),
              ),
              SizedBox(height: 10),
              Text('창문'),
            ],
          ),
          SizedBox(width: 20),
          Column(
            children: [
              IconButton(
                style: IconButton.styleFrom(
                  backgroundColor: backgroundColor4,
                  fixedSize: Size(70, 70),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  side: BorderSide(color: Colors.black),
                ),
                onPressed: () {
                  setState(() {
                    isSelect4 = !isSelect4;
                    if (isSelect4) {
                      backgroundColor4 = Colors.black;
                      iconColor4 = Colors.red;
                    } else {
                      backgroundColor4 = Colors.transparent;
                      iconColor4 = Colors.black;
                    }
                  });
                },
                icon: SvgPicture.asset(
                  'assets/images/warning.svg',
                  color: iconColor4,
                  height: 45,
                ),
              ),
              SizedBox(height: 10),
              Text('비상등'),
            ],
          )
        ],
      ),
    );
  }
}
