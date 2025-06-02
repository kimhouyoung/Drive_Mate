import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'login/loginview.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainWidget();
}

class _MainWidget extends State<MainView> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(milliseconds: 3000), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginView()));
    });
  }
  bool _isFaded = false;
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration.zero, () {
      setState(() {
        _isFaded = true;
      });
    });
    return SizedBox(
      child: AnimatedOpacity(
          opacity: _isFaded ? 1: 0,
          duration: Duration(milliseconds: 2000),
        child: Column(
          children: [
            SizedBox(height: 200),
            SvgPicture.asset(
              'assets/images/hub_24dp_5F6368_FILL0_wght400_GRAD0_opsz24.svg',
              height: 100,
              color: Color.fromARGB(155, 209, 152, 127),
            ),
            SizedBox(height: 20),
            DefaultTextStyle(
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
              child: Text('Drive Mate'),
            ),
            SizedBox(height: 20),
            DefaultTextStyle(
              style: TextStyle(fontSize: 20),
              child: Text('연결하고,운전하고,즐기세요'),
            ),
            SizedBox(height: 50),
            Image.asset('assets/images/car.png'),
          ],
        ),
      )
    );
  }
}
