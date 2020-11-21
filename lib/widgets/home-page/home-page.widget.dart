
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pocApp/widgets/playground/dtop-area.dart';
import 'package:pocApp/widgets/toolbox/toolbox-item.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          toolBox(),
          playgroundArea()
        ],
      )
    );
  }


  Widget toolBox() {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Toolbox', style: TextStyle(fontWeight: FontWeight.bold)),
        Container(
          width: 250,
          height: 500,
          margin: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.indigo)
          ),
          child: Column(
            children: <Widget>[
              ToolboxItem(name: 'Input', icon: Icons.input_rounded),
              ToolboxItem(name: 'Label', icon: Icons.label)
            ],
          ),
        )
      ],
    );
  }

  Widget playgroundArea() {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Playground Area', style: TextStyle(fontWeight: FontWeight.bold)),
        Container(
          width: 350,
          height: 550,
          margin: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.indigo)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              DropArea(),
              DropArea(),
              DropArea(),
              DropArea(),
              DropArea(),
              DropArea(),
              DropArea(),
              DropArea()
            ],
          ),
        )
      ],
    );
  }
}