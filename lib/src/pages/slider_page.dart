import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:my_first_app/src/pages/alert_page.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({Key? key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  bool _blockCheck = false;
  double _SliderValue = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider - checks'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 30.0),
        child: Column(
          children: <Widget>[
            _createSlider(),Divider(),_createImage(),Divider(),_createImage2(),Divider(),_createSwitch(),Divider(),_createCheck()
          ],
        ),
      ),
    );
  }

  Widget _createSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      divisions: 20,
      label: _SliderValue.toString(),
      value: _SliderValue,
      min: 0.0,
      max: 400,
      onChanged: (_blockCheck)? null : (double value) {
        setState(() {
          _SliderValue = value;
        });
      },
    );
  }
  Widget _createImage(){
    return Column(
      children: <Widget>[
        Image(image:NetworkImage('https://www.motor.com.co/files/article_main/uploads/2021/06/21/60d0b07a3af68.jpeg'),
        width: _SliderValue,
        fit: BoxFit.contain,)
      ],
    );
  }
  Widget _createImage2(){
    return Column(
      children: <Widget>[
        Image(image:NetworkImage('https://xbox-store-checker.com/assets/upload/game/2017/11/optimize/bvz3879zkzch-background.jpg'),
          width: _SliderValue,
          fit: BoxFit.contain,)
      ],
    );
  }
  Widget _createSwitch(){
    return SwitchListTile(
      title: Text('Bloquear Slider'),
        value: _blockCheck,
        onChanged: (value){
        setState(() {
          _blockCheck = value;
        });
        });
  }
  Widget _createCheck(){
    return CheckboxListTile(
        title: Text('Bloquear Slider'),
        value: _blockCheck,
        onChanged: (value){
          setState(() {
            _blockCheck = value!;
          });
        });
  }
}

