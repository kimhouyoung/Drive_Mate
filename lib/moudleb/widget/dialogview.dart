import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'homebutton.dart';


class DialogView extends StatefulWidget {
  final String selectedImage;
  final String selectedText;
  final VoidCallback onExample;
  final VoidCallback onExample1;

  const DialogView({
    super.key,
    required this.selectedImage,
    required this.selectedText,
    required this.onExample,
    required this.onExample1
  });

  @override
  State<StatefulWidget> createState() => _DialogWidget();
}

class _DialogWidget extends State<DialogView> {
  bool isSelected1 = false;
  bool isSelected2 = false;
  @override
  Widget build(BuildContext context) {
    HomeButtonState? parent = context.findAncestorStateOfType<HomeButtonState>();
    return Dialog(
      backgroundColor: Colors.black54,
      child: SizedBox(
        width: 350,
        height: 100,
        child: Column(
          children: [
            Container(
              height: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                color: Colors.black,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 5),
                      SvgPicture.asset(
                        'assets/images/hub_24dp_5F6368_FILL0_wght400_GRAD0_opsz24.svg',
                        height: 15,
                        color: Color.fromARGB(155, 209, 152, 127),
                      ),
                      SizedBox(width: 10),
                      DefaultTextStyle(
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w800,
                        ),
                        child: Text('Drive Mate'),
                      ),
                    ],
                  ),
                  IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.settings_outlined,
                      size: 15,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Row(
              children: [
                SizedBox(width: 20),
                Image.asset(widget.selectedImage, height: 45),
                SizedBox(width: 20),
                SizedBox(
                  height: 50,
                  width: 50,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: FloatingActionButton(
                      onPressed: () {
                        widget.onExample1();
                      },
                      backgroundColor: Colors.black,
                      child: SvgPicture.asset(
                        'assets/images/lock.svg',
                        height: 25,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15),
                SizedBox(
                  width: 70,
                  height: 70,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: FloatingActionButton(
                      onPressed: () {
                        widget.onExample();
                      },
                      backgroundColor: Colors.black,
                      child: SvgPicture.asset(
                        'assets/images/power.svg',
                        height: 35,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15),
                SizedBox(
                  height: 50,
                  width: 50,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: FloatingActionButton(
                      onPressed: () {
                        widget.onExample1();
                      },
                      backgroundColor: Colors.black,
                      child: SvgPicture.asset(
                        'assets/images/lockopen.svg',
                        height: 25,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
