import 'package:drive_math/moudleb/widget/homebutton.dart';
import 'package:drive_math/moudleb/widget/homemain.dart';
import 'package:drive_math/moudleb/widget/homewidget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  final String selectedImage;
  final String selectedText;

  const HomeView({
    super.key,
    required this.selectedImage,
    required this.selectedText,
  });

  @override
  State<HomeView> createState() => _HomeWidget();
}

class _HomeWidget extends State<HomeView> {
  bool isSelect1 = false;

  void toggleSelect1() {
    setState(() {
      isSelect1 = !isSelect1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: RefreshIndicator(
        onRefresh: () async {
          await Future.delayed(Duration(milliseconds: 1000));
          setState(() {});
        },

        child: SingleChildScrollView(
          child: Column(
            children: [
              HomeBody(
                selectedImage: widget.selectedImage,
                selectedText: widget.selectedText,
                kilometres: 40,
              ),
              SizedBox(height: 15),
              HomeMain(
                selectedImage: widget.selectedImage,
                selectedText: widget.selectedText,
              ),
              SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
