import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeMain extends StatelessWidget {
  const HomeMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: 350,
        height: 230,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black,
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 24, right: 24),
          child: Column(
            children: [
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/images/car-svgrepo-com.svg',
                        width: 30,
                        color: Colors.brown,
                      ),
                      SizedBox(width: 15),
                      Text(
                        'Vehicle control',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios, color: Colors.white, size: 20),
                ],
              ),
              SizedBox(height: 10),
              Container(height: 1, width: double.infinity, color: Colors.grey),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/images/fan.svg',
                        width: 30,
                        color: Colors.brown,
                      ),
                      SizedBox(width: 15),
                      Text('Climate', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios, color: Colors.white, size: 20),
                ],
              ),
              SizedBox(height: 10),
              Container(height: 1, width: double.infinity, color: Colors.grey),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/images/my_location_black_24dp.svg',
                        width: 30,
                        color: Colors.brown,
                      ),
                      SizedBox(width: 15),
                      Text('Location', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios, color: Colors.white, size: 20),
                ],
              ),
              SizedBox(height: 10),
              Container(height: 1, width: double.infinity, color: Colors.grey),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/images/vpn_key_black_24dp.svg',
                        width: 30,
                        color: Colors.brown,
                      ),
                      SizedBox(width: 15),
                      Text('Valet Mode', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios, color: Colors.white, size: 20),
                ],
              ),
              SizedBox(height: 10),
              Container(height: 1, width: double.infinity, color: Colors.grey),
            ],
          ),
        ),
      ),
    );
  }
}
