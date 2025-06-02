import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';

import 'camera.dart';

class CarView extends StatefulWidget {
  const CarView({super.key});

  @override
  State<CarView> createState() => _CarWidget();
}

class _CarWidget extends State<CarView> {
  XFile? _image;
  final ImagePicker picker = ImagePicker();
  final _formKey = GlobalKey<FormState>();

  Future getImage(ImageSource imageSource) async {
    final XFile? pickedFile = await picker.pickImage(source: imageSource);
    if (pickedFile != null) {
      setState(() {
        _image = XFile(pickedFile.path);
      });
    }
  }

  Widget _buildPhotoArea() {
    return _image != null
        ? Container(
            width: 350,
            height: 180,
            child: Image.file(File(_image!.path)),
          )
        : Container();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        width: double.infinity,
        height: 524,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 24, right: 24, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DefaultTextStyle(
                      style: TextStyle(color: Colors.black, fontSize: 20),
                      child: Text('차량등록하기'),
                    ),
                    SizedBox(
                      width: 70,
                      height: 30,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: SvgPicture.asset(
                          'assets/images/cancel.svg',
                          height: 30,
                          width: 30,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        SizedBox(
                          width: 350,
                          child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "차량 이름 필수 입니다.";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              labelText: '차량 이름',
                              prefixIcon: Icon(
                                Icons.directions_car,
                                color: Colors.black,
                              ),
                              labelStyle: TextStyle(color: Colors.black),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        SizedBox(
                          width: 350,
                          child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "차량 번호는 필수 입니다.";
                              }
                              return null;
                            },
                            obscureText: true,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              labelText: '차량 번호',
                              prefixIcon: Icon(
                                Icons.pin_outlined,
                                color: Colors.black,
                              ),
                              labelStyle: TextStyle(color: Colors.black),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    width: 350,
                    height: 180,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(155, 236, 236, 236),
                    ),
                    child: Column(
                      children: [
                        _image != null
                            ? ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  minimumSize: Size(350, 180),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero,
                                  ),
                                ),
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) => Dialog(
                                      insetPadding: EdgeInsets.zero,
                                      child: CameraView(
                                        SelectImage: (XFile selectedImage) {
                                          setState(() {
                                            _image = selectedImage;
                                          });
                                        },
                                      ),
                                    ),
                                  );
                                },
                                child: _buildPhotoArea(),
                              )
                            : ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  minimumSize: Size(350, 180),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero,
                                  ),
                                ),
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) => Dialog(
                                      insetPadding: EdgeInsets.zero,
                                      child: CameraView(
                                        SelectImage: (XFile selectedImage) {
                                          setState(() {
                                            _image = selectedImage;
                                          });
                                        },
                                      ),
                                    ),
                                  );
                                },
                                child: SvgPicture.asset(
                                  'assets/images/image_24dp_5F6368_FILL0_wght400_GRAD0_opsz24.svg',
                                  height: 50,
                                ),
                              ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Text('이미지를 선택해주세요.'),
                  Text('갤러리 앱 또는 카메라를 이용하실 수 있습니다.'),
                  SizedBox(height: 15),
                  Container(
                    width: 350,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextButton(
                      onPressed: _image == null
                          ? null
                          : () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.pop(context);
                              }
                            },
                      child: Text(
                        '차량 등록 후 이용하기',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
