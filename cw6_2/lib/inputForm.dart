import 'package:flutter/material.dart';
import 'shopping.dart';

class Myform extends StatelessWidget {
  const Myform({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Form"),),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView (
          children: [
            TextField(),
            TextFormField(),
          ],
          ),
      ),
    );
  }
}