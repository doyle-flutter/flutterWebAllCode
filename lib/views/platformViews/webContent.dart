import 'package:flutter/material.dart';
import 'package:flutterweball/views/components/drawerComponent.dart';
import 'package:flutterweball/views/components/mainContentComponent.dart';
import 'package:flutterweball/views/platformViews/appContent.dart';

class WebContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) => _wrapper(context);

  Widget _wrapper(BuildContext context){
    if(MediaQuery.of(context).size.width < 800) return AppContent();
    return _web();
  }

  Widget _web() => Scaffold(
    appBar: AppBar(title: Text("Flutter WEB")),
    body: Container(
      child: Row(
        children: [
          Expanded(flex: 1, child: Container(child: DrawerComponent(),),),
          Flexible(flex: 3, child: MainComponent(itemAxisCount: 4,),),
        ],
      ),
    ),
  );
}

