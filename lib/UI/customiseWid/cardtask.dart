import 'package:flutter/material.dart';

import '../design/colors.dart';

class Cardtask extends StatefulWidget {
  String task;

   Cardtask({required this.task});

  @override
  State<Cardtask> createState() => _CardtaskState();
}

class _CardtaskState extends State<Cardtask> {
  bool isdone = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 90,
        child:  Card(
            color: taskCard,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.task,style: TextStyle(color: Colors.white54,fontSize: 20),),
                  InkWell(
                      child: isdone ? Icon(Icons.check_box):Icon(Icons.check_box_outline_blank),
                    onTap: (){
                        setState(() {
                          isdone = !isdone;
                        });
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
    );
  }
}
