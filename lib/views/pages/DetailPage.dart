import 'package:flutter/material.dart';
import 'package:flutterweball/views/pages/itemPage.dart';
import 'package:flutterweball/views/platformViews/webContentWrapper.dart';

class DetailPage extends StatelessWidget {
  final int index;
  const DetailPage({@required this.index});
  @override
  Widget build(BuildContext context) {
    if(this.index == 0) return Scaffold(
      appBar: AppBar(title: Text("00000"),),
      body: Center(child: Text("INDEX == 0"),),
    );
    return WebContentWrapper(
      appBar: AppBar(title: Text("DetailPage ${this.index}"),),
      bodyMain: ListView.builder(
        itemCount: this.index,
        itemBuilder: (BuildContext context, int index) => ListTile(
          title: Text("detailPage : $index"),
          subtitle: Text("listTile Sub des..."),
          trailing: Icon(Icons.navigate_next),
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              settings: RouteSettings(name: '/detail/${this.index}/item/$index'),
              // builder: (BuildContext context) => ReactWidgetWrapper(
              //   appBar: AppBar(title: Text("REACT WIDGET")),
              //   appDesign: Container(child: Center(child: Text("REACT"),),),
              //   webDesignBodyMain: ListView(
              //     children: [
              //       Container(
              //         child: Text("WEB TITLE"),
              //         margin: EdgeInsets.all(20.0),
              //       ),
              //       Container(
              //         child: Text("WEB DES..."),
              //         margin: EdgeInsets.all(20.0),
              //         padding: EdgeInsets.all(10.0),
              //         color: Colors.purple
              //       )
              //     ],
              //   ),
              //   webDesignDrawer: DrawerComponent()
              // )
              builder: (context) => ItemPage(itemIndex: index)
            )
          ),
        )
      ),
      bodyDrawer: Container()
    );
  }
}
