import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeButton extends StatefulWidget {
  final bool isSelect1;
  final VoidCallback onToggleSelect1;
  final bool isSelect2;
  final VoidCallback onToggleSelect2;
  final bool isSelect3;
  final VoidCallback onToggleSelect3;
  final bool isSelect4;
  final VoidCallback onToggleSelect4;

  const HomeButton({
    super.key,
    required this.isSelect1,
    required this.onToggleSelect1,
    required this.isSelect2,
    required this.onToggleSelect2,
    required this.isSelect3,
    required this.onToggleSelect3,
    required this.isSelect4,
    required this.onToggleSelect4,
  });

  @override
  State<HomeButton> createState() => HomeButtonState();
}

class HomeButtonState extends State<HomeButton> {
  Timer? changeTimer;
  bool isRed = true;

  @override
  void initState() {
    super.initState();
    startBlinkingTimer();
  }

  void startBlinkingTimer() {
    changeTimer = Timer.periodic(Duration(milliseconds: 1000), (_) {
      if (widget.isSelect4) {
        setState(() {
          isRed = !isRed;
        });
      } else {
        if (isRed) {
          setState(() {
            isRed = false;
          });
        }
      }
    });
  }

  @override
  void dispose() {
    changeTimer?.cancel();
    super.dispose();
  }

  @override
  void didUpdateWidget(HomeButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!widget.isSelect4 && isRed) {
      setState(() {
        isRed = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final backgroundColor1 = widget.isSelect1
        ? Colors.black
        : Colors.transparent;
    final iconColor1 = widget.isSelect1 ? Colors.white : Colors.black;
    final backgroundColor2 = widget.isSelect2
        ? Colors.black
        : Colors.transparent;
    final iconColor2 = widget.isSelect2 ? Colors.white : Colors.black;
    final backgroundColor3 = widget.isSelect3
        ? Colors.black
        : Colors.transparent;
    final iconColor3 = widget.isSelect3 ? Colors.white : Colors.black;
    final backgroundColor4 = widget.isSelect4
        ? Colors.black
        : Colors.transparent;
    final iconColor4 = widget.isSelect4
        ? (isRed ? Colors.red : Colors.white)
        : Colors.black;
    final svgImage = widget.isSelect2
        ? 'assets/images/lock.svg'
        : 'assets/images/lockopen.svg';
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
                onPressed: widget.onToggleSelect1,
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
                onPressed: widget.onToggleSelect2,
                icon: SvgPicture.asset(svgImage, color: iconColor2, height: 45),
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
                onPressed: widget.onToggleSelect3,
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
                onPressed: widget.onToggleSelect4,
                icon: SvgPicture.asset(
                  'assets/images/warning.svg',
                  color: iconColor4,
                  height: 45,
                ),
              ),
              SizedBox(height: 10),
              Text('비상등'),
            ],
          ),
        ],
      ),
    );
  }
}
