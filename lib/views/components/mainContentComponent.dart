import 'package:flutter/material.dart';
import 'package:flutterweball/views/pages/DetailPage.dart';

class MainComponent extends StatelessWidget {
  final int itemAxisCount;
  const MainComponent({@required this.itemAxisCount});
  @override
  Widget build(BuildContext context) => Container(
    child: GridView.builder(
      padding: EdgeInsets.all(10.0),
      itemCount: 12,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: this.itemAxisCount,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0
      ),
      itemBuilder: (BuildContext context, int index) => GestureDetector(
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            settings: RouteSettings(name: '/detail/$index'),
            builder: (BuildContext context) => DetailPage(index:index)
          )
        ),
        child: _gridItem(index: index)
      )
    ),
  );

  Widget _gridItem({@required int index}) => GridTile(
    child: Container(
      color: Colors.pinkAccent,
      child: Center(
        child: Text(
          index.toString(),
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        )
      ),
    )
  );
}
