import 'package:flutter/material.dart';
class Formshopping extends StatelessWidget {
  const Formshopping({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SHOPPING"),centerTitle: true,),
      body: Center(
        child: ElevatedButton(onPressed: () {
          Navigator.pop(context);
        }, child: Text("Go back")),
      ),
    );
  }
}
