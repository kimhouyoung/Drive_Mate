import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeBody extends StatelessWidget {
  final String selectedImage;
  final String selectedText;
  final int kilometres;

  const HomeBody({
    super.key,
    required this.selectedImage,
    required this.selectedText,
    required this.kilometres,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: double.infinity,
        height: 420,
        decoration: BoxDecoration(
          color: Colors.grey,
          image: DecorationImage(
            image: AssetImage('assets/images/cloud3.png'),
            fit: BoxFit.cover,
          ),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.75, 1],
            colors: [Colors.grey, Colors.black87],
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 12, top: 37, right: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              selectedText,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.arrow_forward_ios, size: 15),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.notifications_outlined,
                          color: Colors.black,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.settings_outlined,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 24, right: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.light_mode_outlined),
                          Text('28.1°C'),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(Icons.my_location_outlined),
                          Text('경상북 경주시'),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.local_gas_station_outlined),
                      Text(
                        '$kilometres'
                        'km',
                        style: TextStyle(
                          color: kilometres < 50
                              ? Colors.red
                              : (kilometres <= 100
                                    ? Colors.blue
                                    : Colors.black),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Image.asset(selectedImage, width: 320, height: 180),
            ),
          ],
        ),
      ),
    );
  }
}
