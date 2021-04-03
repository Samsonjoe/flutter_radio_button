import 'package:flutter/material.dart';

void main() {
  runApp(new Application());
}

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {

  int rvalue = 0;

  void method1(value){
    setState(() {
      rvalue = value;
      print(rvalue);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Dummy Application',
      home: new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.green,
          title: new Text('Dummy Application'),
        ),
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              new Radio(value: 1, groupValue: rvalue, onChanged: (int rval){method1(rval);}),
              new Radio(value: 2, groupValue: rvalue, onChanged: (int rval){method1(rval);}),
              new Radio(value: 3, groupValue: rvalue, onChanged: (int rval){method1(rval);}),
              
            ],
          ),
        ),
      ),
    );
  }
}


