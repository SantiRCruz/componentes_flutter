import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp2 extends StatelessWidget {
  static const String _title = 'Flutter Example';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyHomeStateFulWidget() ,
    );
  }

}

class MyHomeStateFulWidget extends StatefulWidget {
  const MyHomeStateFulWidget({Key? key}) : super(key: key);

  @override
  _MyHomeStateFulWidget createState() => _MyHomeStateFulWidget();
}

class _MyHomeStateFulWidget extends State<MyHomeStateFulWidget> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyApp Count'),
      ),
      body: Center(
        child: Text('Count : $_count'),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(onPressed: ()=>setState((){
        _count++;
      }),tooltip: 'Clickme',child: Icon(Icons.add),),
    );
  }
}
