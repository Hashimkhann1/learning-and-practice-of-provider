import 'package:flutter/material.dart';
import 'package:managestate/provider/another_exp_provider.dart';
import 'package:managestate/provider/counter_provider.dart';
import 'package:managestate/provider/fav_item_provider.dart';
import 'package:managestate/provider/theme_provider.dart';
import 'package:managestate/screen/another_example.dart';
import 'package:managestate/screen/counter_screen.dart';
import 'package:managestate/screen/dark_and_light_screen.dart';
import 'package:managestate/screen/favourite.dart';
import 'package:managestate/screen/notify_listener_screen.dart';
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
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: Builder(builder: (BuildContext context){
        final themeProvider = Provider.of<ThemeProvider>(context);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          themeMode: themeProvider.themeMode,
          theme: ThemeData(
            brightness: Brightness.light,
            primarySwatch: Colors.blue,
          ),
          darkTheme: ThemeData(
            brightness: Brightness.dark
          ),
          // home: HomeSscreen()
          // home: StateFullScreen(),
          // home: WhyProviderScreen()
          // home: CounterScreen(),
          //   home: AnotherExample(),
          // home: FavouriteScreec(),
          // home: DarkAndLightScreen(),
          home: NotifyListenerScreen(),
        );
      })
    );
  }
}

