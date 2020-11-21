import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class ToolboxItem extends StatelessWidget {
  ToolboxItem({this.name, this.icon});
  final String name;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    var itemInList = Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(width: 1, color: Colors.indigo))
        ),
        child: _item(this.name, this.icon)
    );
    var itemAsFeedback = Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.indigo)
        ),
        child: Center(child: _item(this.name, this.icon))
    );
    return Draggable(
      data: this.name?.toLowerCase(),
      feedback: itemAsFeedback,
      childWhenDragging: itemInList,
      child: MouseRegion(
        cursor: SystemMouseCursors.grab,
        child: itemInList
      )
    );
  }

  Widget _item(String text, IconData icon) {
    return Container(
      child: MouseRegion(
          cursor: SystemMouseCursors.grab,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Icon(icon),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(text, style: TextStyle(fontSize: 20))
              )
            ],
          )
      )
    );
  }

}