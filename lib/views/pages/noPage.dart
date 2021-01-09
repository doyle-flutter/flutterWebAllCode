import 'package:flutter/material.dart';
import 'package:flutterweball/main.dart';

class NoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("NO-PAGE"),),
      body: Center(
        child: TextButton(
          child: Text("HOME"),
          onPressed: () => Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                settings: RouteSettings(name: '/',),
                builder: (BuildContext context) => MainPage()
              ),
              (Route e) => false
          ),
        ),
      ),
    );
  }
}
