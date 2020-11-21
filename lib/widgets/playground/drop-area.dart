import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DropArea extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _DropAreaState();

}

class _DropAreaState extends State<DropArea> {
  String lastAccepted;
  @override
  Widget build(BuildContext context) {
    return DottedBorder(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        child: dropArea()
    );
  }

  Widget dropArea() {
    return DragTarget(
      builder: (BuildContext context, List<String> candidateData, rejectedData) {
        if(candidateData.isEmpty) {
          candidateData = [this.lastAccepted];
        }
        var children = candidateData.map((data) => Container(
            height: 40,
            width: 200,
            child: this.onDrop(data)
        )).toList();
        return Container(
            height: 50,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: children
            )
        );
      },
      onWillAccept: (String data) {
        return data != null;
      },
      onAccept: (String data) {
        this.lastAccepted = data;
      },
    );
  }

  Widget onDrop(String type) {
    switch(type) {
      case 'input':
        return TextField();
      case 'label':
        return Text('I am a label', style: TextStyle(fontSize: 20));
    }
    return Container();
  }
}