import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutterweball/views/pages/DetailPage.dart';
import 'package:flutterweball/views/pages/itemPage.dart';
import 'package:flutterweball/views/pages/noPage.dart';
import 'package:flutterweball/views/pages/pageA.dart';
import 'package:flutterweball/views/platformViews/appContent.dart';
import 'package:flutterweball/views/platformViews/webContent.dart';

void main(){
  GestureBinding.instance?.resamplingEnabled = true;
  WidgetsFlutterBinding.ensureInitialized();
  return runApp(
    MaterialApp(
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings){
        if(settings.name == '/'){
          return MaterialPageRoute(
              settings: RouteSettings(name: '/'),
              maintainState: false,
              builder: (BuildContext context) => MainPage()
          );
        }
        if(settings.name == '/a'){
          return MaterialPageRoute(
            settings: RouteSettings(name: '/a'),
            maintainState: false,
            builder: (BuildContext context) => PageA()
          );
        }

        // dynamic
        Uri uri = Uri.parse(settings.name);
        print(uri.pathSegments.first);
        if(uri.pathSegments.first == 'detail'){
          print(uri.pathSegments);
          if(uri.pathSegments.length < 2 || uri.pathSegments[1].toString().isEmpty) return MaterialPageRoute(
            settings: RouteSettings(name: '/'),
            maintainState: false,
            builder: (BuildContext context) => MainPage()
          );
          else{
            int index = int.parse(uri.pathSegments[1].toString());
            if(uri.pathSegments.length < 4 || uri.pathSegments[3].toString().isEmpty){
              return MaterialPageRoute(
                settings: RouteSettings(name: '/detail/$index'),
                maintainState: false,
                builder: (BuildContext context) => DetailPage(index: index)
              );
            }
            int itemIndex = int.parse(uri.pathSegments[3].toString());
            return MaterialPageRoute(
              settings: RouteSettings(name: '/detail/$index/item/$itemIndex'),
              maintainState: false,
              builder: (BuildContext context) => ItemPage(itemIndex: itemIndex),
            );
          }
        }
        return MaterialPageRoute(
          settings: RouteSettings(name: '/no'),
          maintainState: false,
          builder: (BuildContext context) => NoPage()
        );
      },
    )
  );
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => _content();

  bool _isWeb() => identical(0, 0.0);

  Widget _content(){
    if(_isWeb()) return WebContent();
    return AppContent();
  }
}


