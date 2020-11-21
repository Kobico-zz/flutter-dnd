import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class ToolboxItem extends StatelessWidget {
  ToolboxItem({this.name, this.icon});
  final String name;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Draggable(
      data: this.name,
      feedback: _item(this.name, this.icon, fullBorder: true),
      childWhenDragging: _item(this.name, this.icon),
      child: MouseRegion(
        cursor: SystemMouseCursors.grab,
        child: _item(this.name, this.icon),
      )
    );
  }

  Widget _item(String text, IconData icon, {bool fullBorder = false}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          border: fullBorder ? Border.all(color: Colors.indigo) : Border(bottom: BorderSide(width: 1, color: Colors.indigo))
      ),
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