import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: true,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Inicio", style: TextStyle(color: Colors.white),),
            centerTitle: true,
          ),
        ));
  }
}
