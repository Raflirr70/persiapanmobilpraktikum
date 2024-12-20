import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Apps extends StatefulWidget {
  const Apps({super.key});

  @override
  State<Apps> createState() => _AppsState();
}

class _AppsState extends State<Apps> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedIndex = 2;

  final List<Widget> _pages = [
    Text("_selectedIndex"),
    Text("_selectedIndexx"),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
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
        backgroundColor: Colors.amber,
        title: Text('wadidaw'),
        bottom: TabBar(
          controller: _tabController,
          onTap: _onItemTapped,
          tabs: [
            Tab(icon: Icon(Icons.home), text: 'Home'),
            Tab(icon: Icon(Icons.track_changes), text: 'Track'),
            Tab(icon: Icon(Icons.back_hand), text: 'Hand'),
          ],
        ),
      ),
    );
  }
}
