import 'package:flutter/material.dart';
class DwPage1 extends StatelessWidget {
  //const DwPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página 1'),
      ),
      body : Center(
        child: Text('Página 1', style: TextStyle(fontSize:20),),)
    );
  }
}