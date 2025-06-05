import 'package:drive_math/moudleb/widget/dialogview.dart';
import 'package:drive_math/moudleb/widget/homebutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeMain extends StatefulWidget {
  final String selectedImage;
  final String selectedText;

  const HomeMain({
    super.key,
    required this.selectedImage,
    required this.selectedText,
  });

  @override
  State<StatefulWidget> createState() => HomeStates();
}

class HomeStates extends State<HomeMain> {
  bool isSelect1 = false;
  bool isSelect2 = false;
  bool isSelect3 = false;
  bool isSelect4 = false;

  void toggleSelect1() {
    setState(() {
      isSelect1 = !isSelect1;
    });
  }

  void toggleSelect2() {
    setState(() {
      isSelect2 = !isSelect2;
    });
  }

  void toggleSelect3() {
    setState(() {
      isSelect3 = !isSelect3;
    });
  }

  void toggleSelect4() {
    setState(() {
      isSelect4 = !isSelect4;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          SizedBox(
            height: 100,
            child: HomeButton(
              isSelect1: isSelect1,
              onToggleSelect1: toggleSelect1,
              isSelect2: isSelect2,
              onToggleSelect2: toggleSelect2,
              isSelect3: isSelect3,
              onToggleSelect3: toggleSelect3,
              isSelect4: isSelect4,
              onToggleSelect4: toggleSelect4,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 24, top: 110),
                child: Text(
                  '홍길동님,안녕하세요?',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 42, top: 150),
            child: Container(
              width: 350,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black,
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 24, right: 12),
                child: Column(
                  children: [
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/images/car-svgrepo-com.svg',
                              width: 30,
                              color: Colors.brown,
                            ),
                            SizedBox(width: 15),
                            Text(
                              'Vehicle control',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Container(
                      height: 1,
                      width: double.infinity,
                      color: Colors.grey,
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/images/fan.svg',
                              width: 30,
                              color: Colors.brown,
                            ),
                            SizedBox(width: 15),
                            Text(
                              'Climate',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Container(
                      height: 1,
                      width: double.infinity,
                      color: Colors.grey,
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/images/my_location_black_24dp.svg',
                              width: 30,
                              color: Colors.brown,
                            ),
                            SizedBox(width: 15),
                            Text(
                              'Location',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Container(
                      height: 1,
                      width: double.infinity,
                      color: Colors.grey,
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/images/vpn_key_black_24dp.svg',
                              width: 30,
                              color: Colors.brown,
                            ),
                            SizedBox(width: 15),
                            Text(
                              'Valet Mode',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Container(
                      height: 1,
                      width: double.infinity,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 25,
            bottom: 50,
            width: 45,
            height: 45,
            child: FloatingActionButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return DialogView(
                      selectedImage: widget.selectedImage,
                      selectedText: widget.selectedText,
                      onExample: toggleSelect1,
                      onExample1: toggleSelect2,
                    );
                  },
                );
              },
              backgroundColor: Colors.black87,
              elevation: 0.6,
              shape: CircleBorder(side: BorderSide(color: Colors.grey)),
              mini: true,
              child: SvgPicture.asset('assets/images/power.svg', height: 30),
            ),
          ),
        ],
      ),
    );
  }
}
