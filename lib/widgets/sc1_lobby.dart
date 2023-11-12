import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_app_example/path_image.dart';
import 'package:food_app_example/widgets/sc2_login.dart';
import 'package:page_transition/page_transition.dart';

class Sc1Lobby extends StatefulWidget {
  const Sc1Lobby({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _Sc1LobbyState createState() => _Sc1LobbyState();
}

class _Sc1LobbyState extends State<Sc1Lobby> {
  late final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();
  @override
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      navigatorKey.currentState?.pushReplacement(PageTransition(
          child: const Sc2Login(), type: PageTransitionType.rightToLeft));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Color(0xFFDB166E),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(100.0))),
                  child: Center(
                    child: Image.asset(PathImage.PANDA_LOGO),
                  ),
                ),
              ),
              Expanded(
                child: Image.asset(PathImage.SHIPPER),
              )
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
