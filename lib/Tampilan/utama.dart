import 'package:coba/Tampilan/input.dart';
import 'package:coba/Tampilan/splashscreen.dart';
import 'package:coba/wiget/conten.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Utama extends StatefulWidget {
  const Utama({super.key});

  @override
  State<Utama> createState() => _UtamaState();
}

class _UtamaState extends State<Utama> with SingleTickerProviderStateMixin {
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
    if (_selectedIndex == 2) {
      return Scaffold(body: Inputan());
    }
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                margin: EdgeInsets.all(10),
                color: Colors.red,
                child: Row(
                  children: [
                    ContenKiri(n: 200),
                    ContenKiri(n: 200),
                    ContenKiri(n: 200),
                    ContenKiri(n: 200),
                    ContenKiri(n: 200),
                    ContenKiri(n: 200),
                    ContenKiri(n: 200),
                    ContenKiri(n: 200),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
