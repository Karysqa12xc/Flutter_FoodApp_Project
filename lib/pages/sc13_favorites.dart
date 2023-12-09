import 'package:flutter/material.dart';
import 'package:food_app_example/const/color_const.dart';
import 'package:food_app_example/const/img_asset.dart';
import 'package:food_app_example/models/item_food.dart';
import 'package:food_app_example/pages/sc4_listmain.dart';
import 'package:food_app_example/widgets/custom_app_bar2.dart';
import 'package:google_fonts/google_fonts.dart';

class Sc13Favorites extends StatefulWidget {
  const Sc13Favorites({Key? key}) : super(key: key);

  @override
  _Sc13FavoritesState createState() => _Sc13FavoritesState();
}

class _Sc13FavoritesState extends State<Sc13Favorites> {
  final List<ItemFood> items = [
    ItemFood(
        imagePath: ImgAsset.SUSHI,
        title: "Tuna Sushi Platter (3 Types)",
        description:
            "Sushi Platter | Tuna (2 pcs), Semi-fatty Tuna (2 pcs).\nPrime Fatty Tuna(2pcs)",
        reviews: "298 reviews",
        cost: ''),
    ItemFood(
        imagePath: ImgAsset.CURRY,
        title: "Secret Curry with Pan-seared Lamb For Everyone",
        description: "Lipie, carne pui, cartofi pai,\nsosuri, salata - 700g",
        reviews: "298 reviews",
        cost: ''),
    ItemFood(
        imagePath: ImgAsset.SPRING_ROLL,
        title: "Nem 5 chiếc",
        description: "Đồ ăn siêu ngon dành cho người không muốn ăn kiêng",
        reviews: "298 reviews",
        cost: ''),
    ItemFood(
        imagePath: ImgAsset.HAMBURGER,
        title: "Bánh kẹp thịt",
        description:
            "Đồ ăn cho người béo rất tốt cho sức khoẻ nếu ăn trên 10 chiếc, ngon hơn khi không có rau",
        reviews: "298 reviews",
        cost: ''),
    ItemFood(
        imagePath: ImgAsset.CURRY,
        title: "Secret Curry with Pan-seared Lamb For Everyone",
        description: "Lipie, carne pui, cartofi pai,\nsosuri, salata - 700g",
        reviews: "298 reviews",
        cost: ''),
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
