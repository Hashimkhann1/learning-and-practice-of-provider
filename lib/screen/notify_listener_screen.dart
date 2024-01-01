import 'package:flutter/material.dart';

class NotifyListenerScreen extends StatelessWidget {
  NotifyListenerScreen({super.key});

  ValueNotifier<int> _counter = ValueNotifier<int>(0);
  ValueNotifier<bool> _toggle = ValueNotifier<bool>(true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("practice",),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ValueListenableBuilder(
                valueListenable: _toggle,
                builder: (context , value , child) {
                  return TextField(
                    obscureText: value,
                    decoration: InputDecoration(
                        hintText: "Password",
                        prefixIcon: Icon(Icons.email),
                        suffixIcon: InkWell(
                            onTap: () {
                              _toggle.value = !_toggle.value;
                            },
                            child: Icon(value ? Icons.visibility_off : Icons.visibility)
                        )
                    ),
                  );
            }),
            const SizedBox(height: 20,),
            Center(
              child: ValueListenableBuilder(
                valueListenable: _counter,
                  builder: (context , value , child){
                return Text(value.toString(),style: TextStyle(fontSize: 36),);
              })
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _counter.value++;
          print(_counter.value);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
