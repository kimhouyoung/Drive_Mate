import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../moudlea/choose/carview.dart';
import 'homeview.dart';

class MoudleBView extends StatefulWidget {
  const MoudleBView({super.key});

  @override
  State<MoudleBView> createState() => _MoudleBWidget();
}

class _MoudleBWidget extends State<MoudleBView> {
  bool isChecked = false;
  List<String> carImage = [
    'assets/common/a8.png',
    'assets/common/i8.png',
    'assets/common/q7.png',
  ];
  List<String> carText = ['AUDI A8', 'BMW I8', 'q7'];
  int carIndex = 0;

  void _nextImage() {
    setState(() {
      carIndex = (carIndex + 1) % carImage.length;
    });
  }

  void _nextText() {
    setState(() {
      carIndex = (carIndex + -1) % carImage.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(color: Colors.black),
        child: Column(
          children: [
            Container(
              height: 350,
              decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                  image: AssetImage('assets/images/cloud1.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/images/hub_24dp_5F6368_FILL0_wght400_GRAD0_opsz24.svg',
                    height: 60,
                    color: Color.fromARGB(155, 209, 152, 127),
                  ),
                  SizedBox(width: 20),
                  DefaultTextStyle(
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                    child: Text('Drive Mate'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  IconButton(
                    onPressed: _nextText,
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 180,
                    width: 300,
                    child: Image.asset(carImage[carIndex]),
                  ),
                  IconButton(
                    onPressed: _nextImage,
                    icon: Icon(Icons.arrow_forward_ios),
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            SizedBox(
              child: Text(
                carText[carIndex],
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: CupertinoSwitch(
                    value: isChecked,
                    activeColor: Color.fromARGB(155, 209, 152, 127),
                    onChanged: (value) {
                      setState(() {
                        isChecked = value;
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            Container(
              width: 360,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red,
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeView(),
                      //   selectedImage: carImage[carIndex],
                      // selectedText: carText[carIndex],
                  );
                },
                child: Text(
                  '이 차량 선택하기',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),
            Container(
              width: 360,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 1),
                  ),
                ],
              ),
              child: TextButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) =>
                        Dialog(insetPadding: EdgeInsets.zero, child: CarView()),
                  );
                },
                child: Text(
                  '차량 등록 하기',
                  style: TextStyle(
                    color: Colors.brown,
                    fontSize: 17,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
