import 'package:flutter/material.dart';
class DwPage2 extends StatelessWidget {
  //const DwPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página 2'),
      ),
      body : Center(child: Text('Página 2', style: TextStyle(fontSize:20),),)
    );
  }
}