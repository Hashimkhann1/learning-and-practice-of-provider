import 'package:flutter/material.dart';

class StateFullScreen extends StatefulWidget {
  const StateFullScreen({super.key});

  @override
  State<StateFullScreen> createState() => _StateFullScreenState();
}

class _StateFullScreenState extends State<StateFullScreen> {

  int number = 0;

  @override
  Widget build(BuildContext context) {
    print("Build >>>>>>>>>>>>>>>>>>");
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Center(
              child: Text(
                number.toString(),style: TextStyle(fontSize: 60.0),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          number++;
          setState(() {
            
          });
          print(number);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
