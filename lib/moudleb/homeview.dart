import 'package:drive_math/moudleb/widget/homebutton.dart';
import 'package:drive_math/moudleb/widget/homemain.dart';
import 'package:drive_math/moudleb/widget/homewidget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView(List<String> carImage, List<String> carText, {super.key, required String selectedImage, required String selectedText});


  @override
  State<HomeView> createState() => _HomeWidget();
}

class _HomeWidget extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          HomeBody(),
          SizedBox(height: 10),
          HomeButton(),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 24),
                child: Text(
                  '홍길동님,안녕하세요?',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          HomeMain(),
          //BottomNavigationBar(items: items),
        ],
      ),
    );
  }
}
