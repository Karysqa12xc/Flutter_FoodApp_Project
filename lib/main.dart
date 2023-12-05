import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_app_example/pages/sc6_details_restaurant.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Sc6DetailsRestaurant(),
      debugShowCheckedModeBanner: false,
    );
  }
}
