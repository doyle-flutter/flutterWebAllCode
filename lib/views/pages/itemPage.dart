import 'package:flutter/material.dart';
import 'package:flutterweball/views/components/drawerComponent.dart';
import 'package:flutterweball/views/platformViews/reactWidgetWrapper.dart';

class ItemPage extends StatelessWidget {
  final int itemIndex;
  const ItemPage({@required this.itemIndex});
  @override
  Widget build(BuildContext context) {
    return ReactWidgetWrapper(
      appBar: AppBar(title: Text("REACT WIDGET : ${this.itemIndex}")),
      appDesign: _itemComponent(),
      webDesignBodyMain: _itemComponent(),
      webDesignDrawer: DrawerComponent()
    );
  }
  Widget _itemComponent() => ListView(
    children: [
      Container(
          child: Center(
            child: Text("WEB TITLE",
              style: TextStyle(
                color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.bold
              ),
            ),
          ),
          margin: EdgeInsets.all(20.0),
          padding: EdgeInsets.only(top: 50.0, bottom: 50.0),
          color: Colors.orange
      ),
      Container(
          child: Center(
            child: Text( "WEB DES...",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        margin: EdgeInsets.all(20.0),
        padding: EdgeInsets.only(top: 50.0, bottom: 50.0),
        color: Colors.purple
      )
    ],
  );
}
