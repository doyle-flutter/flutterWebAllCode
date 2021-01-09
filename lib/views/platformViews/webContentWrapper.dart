import 'package:flutter/material.dart';

class WebContentWrapper extends StatelessWidget {
  final AppBar appBar;
  final Widget bodyMain;
  final Widget bodyDrawer;
  const WebContentWrapper({
    @required this.appBar,
    @required this.bodyMain,
    @required this.bodyDrawer
  });
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: this.appBar,
    body:  Container(
      child: Row(
        children: [
          Expanded(flex: 1, child: Container(child: bodyDrawer,),),
          Flexible(flex: 3, child: bodyMain,),
        ],
      ),
    ),
  );
}
