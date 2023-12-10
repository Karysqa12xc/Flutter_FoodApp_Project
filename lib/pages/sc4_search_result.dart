import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';
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
  // final List<ItemFood> items = [
  //   ItemFood(
  //       imagePath: ImgAsset.Sushi,
  //       title: "Tuna Sushi Platter (3 Types)",
  //       description:
  //           "Sushi Platter | Tuna (2 pcs), Semi-fatty Tuna (2 pcs).\nPrime Fatty Tuna(2pcs)",
  //       reviews: "298 reviews",
  //       cost: '10'),
  //   ItemFood(
  //       imagePath: ImgAsset.Curry,
  //       title: "Secret Curry with Pan-seared Lamb For Everyone",
  //       description: "Lipie, carne pui, cartofi pai,\nsosuri, salata - 700g",
  //       reviews: "298 reviews",
  //       cost: '20'),
  //   ItemFood(
  //       imagePath: ImgAsset.SpringRoll,
  //       title: "Nem 5 chiếc",
  //       description: "Đồ ăn siêu ngon dành cho người không muốn ăn kiêng",
  //       reviews: "298 reviews",
  //       cost: '30'),
  //   ItemFood(
  //       imagePath: ImgAsset.Hamburger,
  //       title: "Bánh kẹp thịt",
  //       description:
  //           "Đồ ăn cho người béo rất tốt cho sức khoẻ nếu ăn trên 10 chiếc, ngon hơn khi không có rau",
  //       reviews: "298 reviews",
  //       cost: '50'),
  //   ItemFood(
  //       imagePath: ImgAsset.Curry,
  //       title: "Secret Curry with Pan-seared Lamb For Everyone",
  //       description: "Lipie, carne pui, cartofi pai,\nsosuri, salata - 700g",
  //       reviews: "298 reviews",
  //       cost: '60'),
  // ];
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
        body: StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection("items")
                .doc("1PMYjUSPA9z45yNTs1cP")
                .snapshots(),
            builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return Text("Error: ${snapshot.error}");
              } else if (!snapshot.hasData || !snapshot.data!.exists) {
                return Text("Không có dữ liệu");
              } else {
                List<dynamic> itemsData = snapshot.data!['items'];
                
                return SafeArea(
                  child: isGridMode
                      ? GridMain(items: itemsData)
                      : ListMain(items: itemsData),
                );
              }
            }));
  }
}
