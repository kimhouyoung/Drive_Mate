import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';

import 'carview.dart';

class ChooseView extends StatefulWidget {
  const ChooseView({super.key});

  @override
  State<ChooseView> createState() => _ChooseWidget();
}

class _ChooseWidget extends State<ChooseView> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.black),
        child: Column(
          children: [
            Container(
              height: 370,
              decoration: BoxDecoration(
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
            SizedBox(
              height: 280,
              child: Image.asset('assets/common/Front Car.webp'),
            ),
            TextButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => CarView()),
                // );
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) => Dialog(
                    insetPadding: EdgeInsets.zero,
                      child: CarView()
                )
                );
              },
              child: Container(
                width: 350,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    '차량 등록 후 이용하기',
                    style: TextStyle(color: Colors.white, fontSize: 17),
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
