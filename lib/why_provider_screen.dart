import 'dart:async';

import 'package:flutter/material.dart';

class WhyProviderScreen extends StatefulWidget {
  const WhyProviderScreen({super.key});

  @override
  State<WhyProviderScreen> createState() => _ProviderScreenState();
}

class _ProviderScreenState extends State<WhyProviderScreen> {
  int number = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      number++;
      // print(number);
      setState(() {

      });
    });
  }

  @override
  Widget build(BuildContext context) {
    print('build >>>>>>>>>>>');
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child:Text(DateTime.now().hour.toString()+":"+DateTime.now().minute.toString()+":"+DateTime.now().second.toString(),style: TextStyle(fontSize: 60.0),) ,
          ),
          Center(
            child:Text(number.toString(),style: TextStyle(fontSize: 60.0),) ,
          ),
        ],
      ),
    );
  }
}
