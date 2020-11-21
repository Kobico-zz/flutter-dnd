import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/widgets.dart';

class DropArea extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _DropAreaState();

}

class _DropAreaState extends State<DropArea> {
  @override
  Widget build(BuildContext context) {
    return DottedBorder(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        child: DragTarget(
          builder: (context, List<String> candidateData, rejectedData) {
            print(context);
            print(candidateData);
            print(rejectedData);
          },
        )
    );
  }
}