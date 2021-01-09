import 'package:flutter/material.dart';
import 'package:flutterweball/views/platformViews/webContentWrapper.dart';

class ReactWidgetWrapper extends StatelessWidget {
  final AppBar appBar;
  final Widget appDesign;
  final Widget webDesignDrawer;
  final Widget webDesignBodyMain;
  const ReactWidgetWrapper({@required this.appBar,
    @required this.appDesign, @required this.webDesignBodyMain,
    @required this.webDesignDrawer});

  @override
  Widget build(BuildContext context) => _content(context: context);
  bool _isWeb() => identical(0, 0.0);
  Widget _content({@required BuildContext context}){
    if(_isWeb() || (MediaQuery.of(context).size.width > 800))
      return WebContentWrapper(
        appBar: appBar, bodyMain: webDesignBodyMain, bodyDrawer: webDesignDrawer
      );
    return Scaffold(appBar: this.appBar, body: this.appDesign,);
  }
}

