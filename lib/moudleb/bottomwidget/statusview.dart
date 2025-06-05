import 'package:drive_math/moudleb/bottomwidget/widget/carview.dart';
import 'package:flutter/material.dart';
import 'package:drive_math/moudleb/bottomwidget/widget/weatherview.dart';

class StatusView extends StatefulWidget {
  final String selectedImage;
  final String selectedText;

  const StatusView({
    super.key,
    required this.selectedImage,
    required this.selectedText,
  });

  @override
  State<StatusView> createState() => _StatusViewState();
}

class _StatusViewState extends State<StatusView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Status'),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.zero,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications_outlined),
            ),
          ),
          Padding(
            padding: EdgeInsets.zero,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings_outlined),
            ),
          ),
          SizedBox(width: 10),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: '차량'),
            Tab(text: '공조'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [CarViewWidget(), WeatherView()],
      ),
    );
  }
}
