import 'package:flutter/material.dart';
import 'package:managestate/provider/another_exp_provider.dart';
import 'package:managestate/provider/counter_provider.dart';
import 'package:managestate/provider/fav_item_provider.dart';
import 'package:managestate/screen/another_example.dart';
import 'package:managestate/screen/counter_screen.dart';
import 'package:managestate/screen/favourite.dart';
import 'package:managestate/why_provider_screen.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CountProvieer()),
        ChangeNotifierProvider(create: (_) => AnotherExpProvider()),
        ChangeNotifierProvider(create: (_) => FavItemProvier()),
      ],
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: HomeSscreen()
      // home: StateFullScreen(),
      // home: WhyProviderScreen()
      // home: CounterScreen(),
      //   home: AnotherExample(),
        home: FavouriteScreec(),
    ),
    );
  }
}

