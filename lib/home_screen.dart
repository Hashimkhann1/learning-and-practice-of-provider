import 'package:flutter/material.dart';

class HomeSscreen extends StatelessWidget {
  HomeSscreen({super.key});

  int number = 0;

  @override
  Widget build(BuildContext context) {
    print('Check build>>>>>>>>>>>');
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              child: Text(number.toString(),style: TextStyle(fontSize: 60.0),),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          number++;
          print(number);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
