import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home', style: TextStyle(fontSize: 28),),),
      body: Center(
        child: Text('Home PAGE', style: TextStyle(fontSize: 28),),
      ),
    );
  }
}