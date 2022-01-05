import 'package:flutter/material.dart';
import 'package:my_first_app/src/pages/alert_page.dart';
import 'package:my_first_app/src/routes/routes.dart';

void main() => runApp(MyApp3());

class MyApp3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
      debugShowCheckedModeBanner:false,
      initialRoute: '/',
      routes: getRoutes(),
    onGenerateRoute: (RouteSettings setting){
        return MaterialPageRoute(
            builder: (BuildContext context) => AlertPage());
    },
    );
  }
}
