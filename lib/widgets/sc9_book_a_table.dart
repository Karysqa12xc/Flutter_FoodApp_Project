import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app_example/const/path_assets.dart';
import 'package:food_app_example/custom_appbar3.dart';
import 'package:google_fonts/google_fonts.dart';

class Sc9BookATable extends StatefulWidget {
  const Sc9BookATable({Key? key}) : super(key: key);

  @override
  _Sc9BookATableState createState() => _Sc9BookATableState();
}

class _Sc9BookATableState extends State<Sc9BookATable> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            appBar: const CustomAppbar3(),
            body: Container(
              height: 200,
              width: 200,
              color: Colors.white,
            ),
          ),
        ));
  }
}
