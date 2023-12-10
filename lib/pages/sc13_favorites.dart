import 'package:flutter/material.dart';
import 'package:food_app_example/const/color_const.dart';
import 'package:food_app_example/const/img_asset.dart';
import 'package:food_app_example/models/item_food.dart';
import 'package:food_app_example/models/restaurant.dart';
import 'package:food_app_example/pages/sc4_listmain.dart';
import 'package:food_app_example/widgets/custom_app_bar2.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uuid/uuid.dart';

class Sc13Favorites extends StatefulWidget {
  const Sc13Favorites({Key? key}) : super(key: key);

  @override
  _Sc13FavoritesState createState() => _Sc13FavoritesState();
}

class _Sc13FavoritesState extends State<Sc13Favorites> {
  final List<Restaurant> items = [
    Restaurant(
      id: Uuid().v4(),
      imagePath: ImgAsset.Sushi,
      title: "Tuna Sushi Platter (3 Types)",
      description:
          "Sushi Platter | Tuna (2 pcs), Semi-fatty Tuna (2 pcs).\nPrime Fatty Tuna(2pcs)",
      reviews: "298 reviews",
      // cost: '',
      isFavorite: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar2(
        icons: const [
          Icon(
            Icons.search,
            color: ColorConst.white,
          ),
          Icon(
            Icons.settings,
            color: ColorConst.white,
          )
        ],
        title: Text(
          "favorites".toUpperCase(),
          textAlign: TextAlign.center,
          style: GoogleFonts.nunito(
              fontSize: 14, color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ),
      body: SafeArea(child: ListMain(items: items)),
    );
  }
}
