import 'package:flutter/material.dart';
import 'package:flutter_tasks2/UI/customiseWid/cardtask.dart';
import 'UI/design/colors.dart';


List tasks = ["flutter assignment","gym","study","read a book"];


class todo extends StatefulWidget {

  String? task;

  @override
  State<todo> createState() => _todoState();
}

class _todoState extends State<todo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgScaffold,
      appBar: AppBar(
        title: Text("To Do List"),
        centerTitle: true,
        backgroundColor: appBarColor,
      ),

      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: ListView.builder(
                itemCount: tasks.length,
                  itemBuilder: (context,i){
                return Cardtask(task: tasks[i]);
              }
              ),
            ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextFormField(
              onChanged: (v){
                setState(() {
                  widget.task = v;
                });

              },

              decoration: InputDecoration(
                label: Text("add new task"),
                filled: true,
                fillColor: Colors.white38,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: taskCard,
                  )
                )
                
              ),
            
            ),
          ),
            ElevatedButton(onPressed: (){
              if(widget.task !=null) {
                setState(() {
                  tasks.add(widget.task);
                });

              }

            }, child: Text("ADD"))
          ],
        ),
      ),
    );
  }
}
