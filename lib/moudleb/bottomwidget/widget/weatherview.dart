import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WeatherView extends StatefulWidget {
  const WeatherView({super.key});

  @override
  State<WeatherView> createState() => _WeatherViewState();
}

class _WeatherViewState extends State<WeatherView> {
  final List<_WeatherStatus> weatherStatusList = [
    _WeatherStatus('냉/난방', 'assets/images/mode_cool.svg'),
    _WeatherStatus('핸들 열선', 'assets/images/handle.svg'),
    _WeatherStatus('앞유리 성애 제거', 'assets/images/mirror.svg'),
    _WeatherStatus('뒷유리 열선', 'assets/images/mirror.svg'),
    _WeatherStatus('사이드 미러 열선', 'assets/images/side mirror.svg'),
  ];

  final List<bool> isSelected = [false, false, false, false, false];

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
              '공조 상태',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ...List.generate(weatherStatusList.length, (index) {
              final item = weatherStatusList[index];
              final selected = isSelected[index];
              final color = selected ? Colors.brown : null;
              final statusText = selected ? '켜짐' : '꺼짐';

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
                        child: Text(statusText),
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

class _WeatherStatus {
  final String label;
  final String iconPath;

  _WeatherStatus(this.label, this.iconPath);
}
