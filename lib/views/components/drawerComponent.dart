import 'package:flutter/material.dart';
import 'package:flutterweball/main.dart';

class DrawerComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
    color: Colors.grey[200],
    child: ListView(
      children: [
        ListTile(
          title: Text("HOME"),
          onTap: () => Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              settings: RouteSettings(name: '/'),
              builder: (BuildContext context) => MainPage()
            ),
            (Route e) => false
          ),
        ),
      ],
    ),
  );
}
