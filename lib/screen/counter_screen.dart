import 'dart:async';

import 'package:flutter/material.dart';
import 'package:managestate/provider/counter_provider.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      final countProvider = Provider.of<CountProvieer>(context,listen: false);
      countProvider.setCount();
    });
  }

  @override
  Widget build(BuildContext context) {
    print('Check Build >>>>>>>>>>>>>>>>>>');

    final countProvider = Provider.of<CountProvieer>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("Countere Example"),
        centerTitle: true,
      ),
      body: Center(
        child: Consumer<CountProvieer>(builder: (_ , value , child) {
          // print('text bild');
          return Text(value.count.toString(),style: TextStyle(fontSize: 60),);
        },)
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countProvider.setCount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
