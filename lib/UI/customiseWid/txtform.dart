import 'package:flutter/material.dart';

class txtform extends StatelessWidget {
  String? lbl;
  String? hnt;
  Icon? preIcon;
   txtform({required this.lbl, required this.hnt,this.preIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        label: Text("ad")
      ),
    );
  }
}
