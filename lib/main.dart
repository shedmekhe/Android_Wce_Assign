import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(title: 'Assignment 1'),
    );
  }
}

//This is Home Screen Widget
class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;
  String input = "           Hello User !!\n Please Input Your Name";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(child: Text(widget.title)),
      ),
      body: Center(
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 85,
                ),
                Text(
                  input,
                  style: TextStyle(fontSize: 21, fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 35,
                ),
                Padding(
                  padding: const EdgeInsets.all(70.0),
                  child: TextField(
                    textAlign: TextAlign.center,
                    onChanged: (value) {
                      input = 'Hello ' + value + ' !';
                      if (value.isEmpty)
                        input =
                            "          Hello User !!\n Please Input Your Name";
                    },
                  ),
                ),
                SizedBox(
                  height: 55,
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {});
                    },
                    child: Text('Ok')),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Created By 2020BTEIT00015',
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
