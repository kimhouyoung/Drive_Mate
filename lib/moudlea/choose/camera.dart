import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CameraView extends StatefulWidget {
  const CameraView({super.key, required this.SelectImage});
  final Function(XFile) SelectImage;

  @override
  State<CameraView> createState() => _CameraWidget();
}
//ㅋㅂㅎㅅ
class _CameraWidget extends State<CameraView> {
  XFile? _image;
  final ImagePicker picker = ImagePicker();

  Future getImage(ImageSource imageSource) async {
    final XFile? pickedFile = await picker.pickImage(source: imageSource);
    if (pickedFile != null) {
      setState(() {
        _image = XFile(pickedFile.path);
        widget.SelectImage(pickedFile);
        Navigator.pop(context);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  getImage(ImageSource.camera);
                },
                child: Text('카메라')
            ),
            SizedBox(width: 20),
            ElevatedButton(
                onPressed: () {
                  getImage(ImageSource.gallery);
                },
                child: Text('갤러리')
            )
          ],
      )
    );
  }
  
}