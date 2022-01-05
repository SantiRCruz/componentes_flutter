import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  List marcas = ['Toyota','Honda','Mazda','Nissan','Chevrolet'];
  String _optionSelected = "Toyota";
  String _fecha = "";
  TextEditingController _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Page'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 20),
        children: <Widget>[
          _createInput(),Divider(),
          _createInputEmail(),Divider()
          ,_createInputPassword(),Divider(),
          _createDateTimePicker(context),Divider(),
          _createDropDown()
        ],
      ),
    );
  }

  Widget _createInput() {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        hintText: 'Escriba su nombre aqui',
        labelText: "Nombre ",
        helperText: 'Escriba el nombre solamente',
        suffixIcon: Icon(Icons.accessibility),
        icon: Icon(Icons.account_circle)
      ),
    );
  }
  Widget _createInputEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          hintText: 'Escriba su Email aqui',
          labelText: "Email ",
          helperText: 'Escriba el Email solamente',
          suffixIcon: Icon(Icons.alternate_email),
          icon: Icon(Icons.email)
      ),
    );
  }

  Widget _createInputPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          hintText: 'Escriba su Password aqui',
          labelText: "Password ",
          helperText: 'Escriba el Password solamente',
          suffixIcon: Icon(Icons.lock_open),
          icon: Icon(Icons.lock)
      ),
    );
  }
  Widget _createDateTimePicker(BuildContext context) {
    return TextField(
      enableInteractiveSelection: false,
      controller: _textController,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          hintText: 'Escriba su fecha de nacimiento aqui',
          labelText: "fecha de nacimiento ",
          helperText: 'Escriba la fecha de nacimiento solamente',
          suffixIcon: Icon(Icons.perm_contact_calendar),
          icon: Icon(Icons.calendar_today)
      ),
      onTap: (){
        FocusScope.of(context).requestFocus(FocusNode());
        _selectDate(context);
      },
    );
  }

   _selectDate(BuildContext context) async {
    DateTime? picked =  await showDatePicker(context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2019),
        lastDate: DateTime(2028),
    );
    if (picked != null){
      setState(() {
        _fecha = picked.toString();

        _textController.text = _fecha;
      });
    }
  }

  Widget _createDropDown() {
    return Row(
      children: <Widget>[
        Icon(Icons.select_all),
        SizedBox(width: 30.0,),
        Expanded(child: DropdownButton(
          value: _optionSelected,
            items: _getOptionsDropDown(),
            onChanged: (value){
            setState(() {
              _optionSelected = value.toString();
            });
            }))
      ],
    );
  }

   List<DropdownMenuItem<String>> _getOptionsDropDown() {
    List<DropdownMenuItem<String>> list = [];
    marcas.forEach((element) { 
      list.add(DropdownMenuItem(child: Text(element),value: element,));
    });
    return list;
  }
}
