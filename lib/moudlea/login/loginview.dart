import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../choose/chooseview.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginWidget();
}

class _LoginWidget extends State<LoginView> {
  bool isChecked = false;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(color: Colors.black),
        child: Column(
          children: [
            SizedBox(height: 60),
            Row(
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
            SizedBox(height: 5),
            Image.asset('assets/images/red car.png', height: 250),
            DefaultTextStyle(
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              child: Text('로그인 정보를 입력하세요.'),
            ),
            SizedBox(height: 20),
            Form(
              key: _formKey,
                child: Column(
                  children: [
                    SizedBox(
                      width: 350,
                      child: TextFormField(
                        validator: (value) {
                          if(value == null || value.isEmpty) {
                            return "사용자 이름은 필수 입니다.";
                          }else if (value.contains(RegExp(r"\s"))) {
                            return "공백은 안됩니다.";
                          }else if (value.length < 4) {
                            return "4자 이상이어야 합니다.";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: 'Username',
                          prefixIcon: Icon(Icons.account_box_sharp, color: Colors.grey),
                          labelStyle: TextStyle(color: Colors.grey),
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
                          if(value == null || value.isEmpty) {
                            return "비밀번호는 필수 입니다.";
                          }else if (value.length < 4) {
                            return "4자 이상이어야 합니다.";
                          }
                          return null;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: 'Password',
                          prefixIcon: Icon(Icons.lock_sharp, color: Colors.grey),
                          labelStyle: TextStyle(color: Colors.grey),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 35)),
                CupertinoSwitch(
                  value: isChecked,
                  activeColor: Color.fromARGB(155, 209, 152, 127),
                  onChanged: (value) {
                    setState(() {
                      isChecked = value;
                    });
                  },
                ),
                Text(
                  'Remember',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
              ],
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                if(_formKey.currentState!.validate()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChooseView()),
                  );
                }
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
                    'Sign in',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ),
              ),
            ),
            SizedBox(height: 23),
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(color: Color.fromARGB(144, 34, 34, 34)),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  TextButton(
                    onPressed: () {},
                    child: Container(
                      width: 280,
                      height: 50,
                      decoration: BoxDecoration(color: Colors.grey),
                      child: Center(
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Container(
                      width: 280,
                      height: 50,
                      decoration: BoxDecoration(color: Colors.white),
                      child: Center(
                        child: Text(
                          'Password Reset',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
