import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:my_first_app/providers/provider_menu.dart';
import 'package:my_first_app/utils/utils_functions.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text('Componentes de flutter'),
        ),
        body:  _List(),
    );
  }

  Widget _List() {
    return FutureBuilder(
      initialData:[],
      future:menuProvider.loadData(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return ListView(children: _listItems(snapshot.data,context));
      },);
  }

  List<Widget> _listItems(List<dynamic> optListMenu, BuildContext context)  {
      final List<Widget> optValueWidget = [];
      optListMenu.forEach((element) {
        final widgetValue = ListTile(
          title: Text(element['texto']),
          leading: getIcon(element['icon']) ,
          trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
          onTap: () {
            Navigator.pushNamed(context, element['ruta']);
          },
        );
        optValueWidget.add(widgetValue);
      });
      return optValueWidget;
  }
}

