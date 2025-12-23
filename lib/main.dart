import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFF4F1F8),
        appBar: AppBar(
          title: Text("Digital ID Card"),
          centerTitle: true,
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: Center(
          child: Card(
            elevation: 4,
            margin: EdgeInsets.all(20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    radius: 45,
                    backgroundImage: AssetImage("image/woman.png"),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Musrat Jahan Afrin",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Batch: 62th, Department of CSE",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: 15),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text("ID"),
                    subtitle: Text("0182320012101324"),
                  ),
                  ListTile(
                    leading: Icon(Icons.email),
                    title: Text("Email"),
                    subtitle: Text("musratafrin5816@gmail.com"),
                  ),
                  ListTile(
                    leading: Icon(Icons.phone),
                    title: Text("Phone"),
                    subtitle: Text("01600005816"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}