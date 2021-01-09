import 'package:flutter/material.dart';
import 'package:flutterweball/views/components/drawerComponent.dart';
import 'package:flutterweball/views/components/mainContentComponent.dart';

class AppContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter APP")),
      drawer: Drawer(
        child: DrawerComponent(),
      ),
      body: MainComponent(itemAxisCount: 2,),
    );
  }
}

