import 'package:flutter/material.dart';
import 'package:my_first_app/src/pages/card_page.dart';
import 'package:my_first_app/src/pages/input_page.dart';
import 'package:my_first_app/src/pages/list_page.dart';
import 'package:my_first_app/src/pages/slider_page.dart';

import '../pages/alert_page.dart';
import '../pages/avatar_page.dart';
import '../pages/home.dart';

Map <String, WidgetBuilder> getRoutes(){
 print('paso por aca');
 return <String, WidgetBuilder> {
  '/':(BuildContext context)=>Home(),
  'alert':(BuildContext context)=>AlertPage(),
  'avatar':(BuildContext context)=>AvatarPage(),
  'card':(BuildContext context)=>CardPage(),
  'inputs':(BuildContext context)=>InputPage(),
  'slider':(BuildContext context)=>SliderPage(),
  'list':(BuildContext context)=>ListPage(),
  };
}
