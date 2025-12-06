import 'package:flutter/material.dart';

void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // เอาคาดแดงมุมขวาออก
      title: 'Calculator Dark Mode',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black, // 1. ตั้งพื้นหลังแอปเป็นสีดำ
      ),
      home: MyAPP(),
    );
  }
}

class MyAPP extends StatefulWidget {
  const MyAPP({super.key});

  @override
  State<MyAPP> createState() => _MyAPPState();
}

class _MyAPPState extends State<MyAPP> {
  String displayText = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black, // หัวแอปสีดำ
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // --- หน้าจอแสดงผล ---
          Container(
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerRight,
            child: Text(
              displayText,
              style: TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.bold,
                color: Colors.white, // ตัวเลขสีขาว
              ),
            ),
          ),

          // --- แถวปุ่มกด ---

          // แถวที่ 1
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // ปุ่มสีเทาอ่อน (Top Function)
              buildButton("C", Colors.grey, textColor: Colors.black),
              buildButton("⌫", Colors.grey, textColor: Colors.black),
              buildButton("%", Colors.grey, textColor: Colors.black),
              buildButton("÷", Colors.orange),
            ],
          ),
          SizedBox(height: 15),

          // แถวที่ 2
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildButton("7", Colors.grey[850]!), // สีเทาเข้ม
              buildButton("8", Colors.grey[850]!),
              buildButton("9", Colors.grey[850]!),
              buildButton("×", Colors.orange),
            ],
          ),
          SizedBox(height: 15),

          // แถวที่ 3
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildButton("4", Colors.grey[850]!),
              buildButton("5", Colors.grey[850]!),
              buildButton("6", Colors.grey[850]!),
              buildButton("-", Colors.orange),
            ],
          ),
          SizedBox(height: 15),

          // แถวที่ 4
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildButton("1", Colors.grey[850]!),
              buildButton("2", Colors.grey[850]!),
              buildButton("3", Colors.grey[850]!),
              buildButton("+", Colors.orange),
            ],
          ),
          SizedBox(height: 15),

          // แถวที่ 5
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // ปุ่ม 0 แบบกว้าง (ใช้ Container หลอกตา หรือใส่ปุ่มปกติไปก่อนก็ได้)
              buildButton("0", Colors.grey[850]!),
              buildButton("00", Colors.grey[850]!),
              buildButton(".", Colors.grey[850]!),
              buildButton("=", Colors.orange),
            ],
          ),

          SizedBox(height: 30),
        ],
      ),
    );
  }

  // ผมสร้างฟังก์ชันช่วยสร้างปุ่มให้ (จะได้แก้สีที่เดียวจบ)
  Widget buildButton(
    String text,
    Color bgColor, {
    Color textColor = Colors.white,
  }) {
    return SizedBox(
      width: 80, // กำหนดขนาดปุ่ม
      height: 80,
      child: FloatingActionButton(
        onPressed: () {},
        backgroundColor: bgColor, // สีปุ่ม
        foregroundColor: textColor, // สีตัวหนังสือ
        shape: CircleBorder(), // บังคับให้เป็นวงกลมเป๊ะๆ
        child: Text(text, style: TextStyle(fontSize: 30)),
      ),
    );
  }
}
