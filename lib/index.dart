import 'package:coba/Tampilan/App.dart';
import 'package:coba/Tampilan/input.dart';
import 'package:coba/Tampilan/splashscreen.dart';
import 'package:coba/Tampilan/utama.dart';
import 'package:coba/wiget/conten.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedIndex = 0;

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
    Widget getBody() {
      switch (_selectedIndex) {
        case 0:
          return Scaffold(body: Utama());
        case 1:
          return Scaffold(body: Inputan());
        case 2:
          return Scaffold(body: Text('Bagian 3'));
        default:
          return Text('asd');
      }
    }

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
      body: getBody(),
    );
  }
}
