import 'package:drive_math/moudleb/homeview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../bottomwidget/controlview.dart';
import '../bottomwidget/statusview.dart';
import '../bottomwidget/shareview.dart';

class LayoutView extends StatefulWidget {
  final String selectedImage;
  final String selectedText;

  const LayoutView({
    super.key,
    required this.selectedImage,
    required this.selectedText,
  });

  @override
  State<LayoutView> createState() => _HomeBottomState();
}

class _HomeBottomState extends State<LayoutView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                HomeView(
                  selectedImage: widget.selectedImage,
                  selectedText: widget.selectedText,
                ),
                ControlView(),
                StatusView(
                  selectedImage: widget.selectedImage,
                  selectedText: widget.selectedText,
                ),
                ShareView(),
              ],
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: TabBar(
              controller: _tabController,
              labelColor: Colors.brown,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(icon: Icon(Icons.home_outlined, size: 30), text: 'Home'),
                Tab(
                  icon: Icon(Icons.control_camera_outlined, size: 30),
                  text: 'Control',
                ),
                Tab(
                  icon: SvgPicture.asset(
                    'assets/images/direct.svg',
                    height: 30,
                  ),
                  text: 'Status',
                ),
                Tab(
                  icon: SvgPicture.asset('assets/images/share.svg', height: 30),
                  text: 'Share',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
