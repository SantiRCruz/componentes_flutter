import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<int> _number  = [1,2,3,4,5,6];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List Page'),
      ),
      body: _createList(),
    );
  }

  Widget _createList() {
    return ListView.builder(
      itemCount: _number.length,
        itemBuilder: (context, index) {
          final image = _number[index];
          return FadeInImage(
              placeholder: AssetImage('assets/cat.gif'),
              image: NetworkImage('https://picsum.photos/500/300?random=$image')
          );
        },
    );
  }
}
