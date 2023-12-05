import 'package:flutter/material.dart';
import 'package:food_app_example/const/img_asset.dart';
import 'package:food_app_example/models/item_food.dart';
import 'package:food_app_example/pages/sc4_gridmain.dart';
import 'package:food_app_example/pages/sc4_listmain.dart';
import 'package:food_app_example/widgets/custom_appbar1.dart';

class Sc4SearchResult extends StatefulWidget {
  const Sc4SearchResult({Key? key}) : super(key: key);

  @override
  _Sc4SearchResultState createState() => _Sc4SearchResultState();
}

class _Sc4SearchResultState extends State<Sc4SearchResult> {
  bool isGridMode = false;
  final List<ItemFood> items = [
    ItemFood(
        imagePath: ImgAsset.SUSHI,
        title: "Tuna Sushi Platter (3 Types)",
        description:
            "Sushi Platter | Tuna (2 pcs), Semi-fatty Tuna (2 pcs).\nPrime Fatty Tuna(2pcs)",
        reviews: "298 reviews",
        cost: '10'),
    ItemFood(
        imagePath: ImgAsset.CURRY,
        title: "Secret Curry with Pan-seared Lamb For Everyone",
        description: "Lipie, carne pui, cartofi pai,\nsosuri, salata - 700g",
        reviews: "298 reviews",
        cost: '20'),
    ItemFood(
        imagePath: ImgAsset.SPRING_ROLL,
        title: "Nem 5 chiếc",
        description: "Đồ ăn siêu ngon dành cho người không muốn ăn kiêng",
        reviews: "298 reviews",
        cost: '30'),
    ItemFood(
        imagePath: ImgAsset.HAMBURGER,
        title: "Bánh kẹp thịt",
        description:
            "Đồ ăn cho người béo rất tốt cho sức khoẻ nếu ăn trên 10 chiếc, ngon hơn khi không có rau",
        reviews: "298 reviews",
        cost: '50'),
    ItemFood(
        imagePath: ImgAsset.CURRY,
        title: "Secret Curry with Pan-seared Lamb For Everyone",
        description: "Lipie, carne pui, cartofi pai,\nsosuri, salata - 700g",
        reviews: "298 reviews",
        cost: '60'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppbar1(
          onToggle: (bool isGrid) {
            setState(() {
              isGridMode = isGrid;
            });
          },
          isGridMode: isGridMode,
        ),
        body: SafeArea(
          child: isGridMode ? GridMain(items: items) : ListMain(items: items),
        ));
  }
}
