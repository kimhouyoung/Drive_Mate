import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

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
              colors: [Colors.grey, Colors.black87]),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 24, top: 50, right: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'I8',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios, size: 15),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.notifications_outlined),
                      Icon(Icons.settings_outlined),
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
                      SizedBox(height: 10,),
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
                      Text('424km'),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            Image(
              image: AssetImage('assets/common/i8.png'),
              width: 320,
              height: 180,
            ),

          ],
        ),
      ),
    );
  }

}