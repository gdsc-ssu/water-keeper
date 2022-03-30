import 'package:flutter/material.dart';

class Test4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(child: Text('공지', style: TextStyle(fontSize: 60),),),
    );
  }
}
