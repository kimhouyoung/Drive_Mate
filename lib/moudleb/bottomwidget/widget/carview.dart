import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CarViewWidget extends StatefulWidget {
  const CarViewWidget({super.key});

  @override
  State<CarViewWidget> createState() => _CarViewWidgetState();
}

class _CarViewWidgetState extends State<CarViewWidget> {
  final List<_CarStatus> carStatusList = [
    _CarStatus('도어', '잠김', 'assets/images/door2.svg'),
    _CarStatus('창문', '닫힘', 'assets/images/window.svg'),
    _CarStatus('테일게이트', '닫힘', 'assets/images/tailgate.svg'),
    _CarStatus('후드', '닫힘', 'assets/images/bonnet.svg'),
  ];

  final List<bool> isSelected = [false, false, false, false];

  void toggleSelected(int index) {
    setState(() {
      isSelected[index] = !isSelected[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '차량 상태',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ...List.generate(carStatusList.length, (index) {
              final item = carStatusList[index];
              final selected = isSelected[index];
              final color = selected ? Colors.brown : null;
              final textButton = selected ? '열림' : item.buttonText;

              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(item.iconPath, height: 30, color: color),
                          SizedBox(width: 20),
                          Text(item.label),
                        ],
                      ),
                      TextButton(
                        onPressed: () => toggleSelected(index),
                        style: TextButton.styleFrom(foregroundColor: color),
                        child: Text(textButton),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(width: double.infinity, height: 1, color: Colors.grey),
                  SizedBox(height: 10),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}

class _CarStatus {
  final String label;
  final String buttonText;
  final String iconPath;

  _CarStatus(this.label, this.buttonText, this.iconPath);
}
