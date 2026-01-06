import 'package:flutter/material.dart';
import 'shopping.dart';
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("WEEK6-1")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                children: [
                  Text("BODY WEEK 6", style: TextStyle(fontSize: 40)),
                  elevBTN(context),
                  OutLineBTN(context),
                  textBTN(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  TextButton textBTN() =>
      TextButton(onPressed: () {}, child: Text("T E X T B U T T O N"));

  OutlinedButton OutLineBTN(BuildContext context) {
    return OutlinedButton(onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context){
            return Formshopping();
          },
      ),
      );
    }, child: Text("Outlined Button"));
  }

  ElevatedButton elevBTN(BuildContext context) {
    return ElevatedButton(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text("Elevated Button"), Icon(Icons.add_shopping_cart)],
      ),
      style: ElevatedButton.styleFrom(fixedSize: Size(300, 80), elevation: 10),

      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: Text("TITLE"),
          content: Text("DESCRIPTION"),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("cancel"),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("OK"),
            ),
          ],
        ),
      ),
    );
  }
}
