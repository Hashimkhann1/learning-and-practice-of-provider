import 'package:flutter/material.dart';
import 'package:managestate/provider/another_exp_provider.dart';
import 'package:provider/provider.dart';

class AnotherExample extends StatefulWidget {
  const AnotherExample({super.key});

  @override
  State<AnotherExample> createState() => _AnotherExampleState();
}

class _AnotherExampleState extends State<AnotherExample> {

  double sliderVal = 1.0;

  @override
  Widget build(BuildContext context) {
    print('check build >>>>>>>>>>>>>>>>>>');
    return Scaffold(
      appBar: AppBar(
        title: Text("Another Provider Exp"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<AnotherExpProvider>(builder: (_, value , child) {
            return Slider(
                min: 0,
                max: 1,
                value: value.sliderValue, onChanged: (val) {
              value.changeSliderVal(val);
            });
          }),
          Consumer<AnotherExpProvider>(builder: (_ , value , child){
            return Row(
              children: [
                Expanded(
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.green.withOpacity(value.sliderValue),
                    ),
                    child: const Center(
                      child: Text('container 1',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.red.withOpacity(value.sliderValue),
                    ),
                    height: 80,
                    child: const Center(
                      child: Text('container 1',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    ),
                  ),
                ),
              ],
            );
          }),
        ],
      ),
    );
  }
}
