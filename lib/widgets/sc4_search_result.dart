import 'package:flutter/material.dart';
import 'package:food_app_example/const/path_assets.dart';
import 'package:food_app_example/custom_appbar.dart';
import 'package:food_app_example/models/item_food.dart';
import 'package:food_app_example/widgets/sc4_gridmain.dart';
import 'package:food_app_example/widgets/sc4_listmain.dart';

class Sc4SearchResult extends StatefulWidget {
  const Sc4SearchResult({Key? key}) : super(key: key);

  @override
  _Sc4SearchResultState createState() => _Sc4SearchResultState();
}

class _Sc4SearchResultState extends State<Sc4SearchResult> {
  bool isGridMode = false;
  final List<ItemFood> items = [
    ItemFood(
        imagePath: PathAsset.SUSHI,
        title: "Tuna Sushi Platter (3 Types)",
        description:
            "Sushi Platter | Tuna (2 pcs), Semi-fatty Tuna (2 pcs).\nPrime Fatty Tuna(2pcs)",
        reviews: "298 reviews"),
    ItemFood(
        imagePath: PathAsset.CURRY,
        title: "Secret Curry with Pan-seared Lamb For Everyone",
        description: "Lipie, carne pui, cartofi pai,\nsosuri, salata - 700g",
        reviews: "298 reviews"),
    ItemFood(
        imagePath: PathAsset.SPRING_ROLL,
        title: "Nem 5 chiếc",
        description: "Đồ ăn siêu ngon dành cho người không muốn ăn kiêng",
        reviews: "298 reviews"),
    ItemFood(
        imagePath: PathAsset.HAMBURGER,
        title: "Bánh kẹp thịt",
        description:
            "Đồ ăn cho người béo rất tốt cho sức khoẻ nếu ăn trên 10 chiếc, ngon hơn khi không có rau",
        reviews: "298 reviews"),
    ItemFood(
        imagePath: PathAsset.CURRY,
        title: "Secret Curry with Pan-seared Lamb For Everyone",
        description: "Lipie, carne pui, cartofi pai,\nsosuri, salata - 700g",
        reviews: "298 reviews"),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
          child: Scaffold(
              appBar: CustomAppbar(
                onToggle: (bool isGrid) {
                  setState(() {
                    isGridMode = isGrid;
                  });
                },
                isGridMode: isGridMode,
              ),
              body: isGridMode
                  ? GridMain(items: items)
                  : ListMain(items: items))),
      debugShowCheckedModeBanner: false,
    );
  }
}
