import 'package:flutter/material.dart';

class ContenKiri extends StatefulWidget {
  final int n;
  const ContenKiri({super.key, required this.n});

  @override
  State<ContenKiri> createState() => _ContenKiriState();
}

class _ContenKiriState extends State<ContenKiri> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.n.toDouble(),
      margin: EdgeInsets.all(10),
      color: Colors.blue,
      child: Column(
        children: [
          Image(
            image: AssetImage('assets/img/thenice.jpg'),
            width: 100,
          ),
          Text(
            "The Nice",
            style: TextStyle(fontSize: 20, color: Colors.blue),
            textAlign: TextAlign.left,
          ),
          Text(
            "The Nice",
            style: TextStyle(fontSize: 8, color: Colors.purple),
            textAlign: TextAlign.left,
          )
        ],
      ),
    );
  }
}

class ContenBawah extends StatefulWidget {
  final int n;
  const ContenBawah({super.key, required this.n});

  @override
  State<ContenBawah> createState() => _ContenBawahState();
}

class _ContenBawahState extends State<ContenBawah> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.n.toDouble(),
      margin: EdgeInsets.all(10),
      color: Colors.blue,
      child: Row(
        children: [
          Image(
            image: AssetImage('assets/img/thenice.jpg'),
          ),
          Column(
            children: [
              Text(
                "The Nice",
                style: TextStyle(fontSize: 20, color: Colors.blue),
                textAlign: TextAlign.left,
              ),
              Text(
                "The Nice",
                style: TextStyle(fontSize: 8, color: Colors.purple),
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
