import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app_example/const/color_const.dart';
import 'package:food_app_example/const/img_asset.dart';
import 'package:food_app_example/const/svg_asset.dart';
import 'package:food_app_example/models/item_food.dart';
import 'package:food_app_example/pages/sc_home.dart';

import 'package:food_app_example/widgets/custom_appbar3.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class Sc9And11BookATable extends StatefulWidget {
  const Sc9And11BookATable({Key? key}) : super(key: key);

  @override
  _Sc9And11BookATableState createState() => _Sc9And11BookATableState();
}

class _Sc9And11BookATableState extends State<Sc9And11BookATable> {
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
        title: "Carry 7 màu",
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
        title: "Carry",
        description: "Lipie, carne pui, cartofi pai,\nsosuri, salata - 700g",
        reviews: "298 reviews",
        cost: '60'),
  ];
  final List<String> _list = [
    '2 Adults, 3 children',
    '1 Adults',
    '4 Adults, 4 children',
    '20 Adults',
    '1 Adults, 15 children',
    '10 Adults',
  ];
  List<int> selectedItems = [];
  int _visibleCountItem = 3;
  bool isTenItem = false;
  double totalCost = 0;
  late String funStr = "View more";
  void loadMoreItem() {
    setState(() {
      _visibleCountItem = items.length;
      funStr = "Short Item";
      isTenItem = true;
    });
  }

  void shortedItem() {
    setState(() {
      _visibleCountItem = 3;
      funStr = "View more";
      isTenItem = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar3(),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 130,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: ColorConst.grey.withOpacity(0.4), blurRadius: 5.0)
              ]),
              child: Padding(
                padding: const EdgeInsets.only(top: 20, right: 15, left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("ORDERING",
                        style: GoogleFonts.nunito(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: ColorConst.greyBold)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Number of person",
                          style: GoogleFonts.nunito(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: ColorConst.greyBold),
                        ),
                        SizedBox(
                          width: 240,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomDropdown<String>(
                                hintText: 'Select Your Options',
                                items: _list,
                                maxlines: 1,
                                onChanged: (value) {
                                  debugPrint(value);
                                },
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      color: ColorConst.grey.withOpacity(0.4), blurRadius: 5)
                ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "MENU",
                            style: GoogleFonts.nunito(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: ColorConst.greyBold),
                          ),
                          InkWell(
                            onTap: () {
                              if (isTenItem) {
                                shortedItem();
                              } else {
                                loadMoreItem();
                              }
                            },
                            child: Text(
                              funStr,
                              style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: ColorConst.pink),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView.separated(
                        itemCount: _visibleCountItem,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 50,
                                      width: 50,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          items[index].imagePath,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          items[index].title,
                                          style: GoogleFonts.nunito(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w700),
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                        ),
                                        Text(
                                          "\$" "${items[index].cost}",
                                          style:
                                              GoogleFonts.nunito(fontSize: 11),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      if (selectedItems.contains(index)) {
                                        selectedItems.remove(index);
                                        totalCost -=
                                            double.parse(items[index].cost);
                                      } else {
                                        selectedItems.add(index);
                                        totalCost +=
                                            double.parse(items[index].cost);
                                      }
                                    });
                                  },
                                  child: selectedItems.contains(index)
                                      ? const CircleAvatar(
                                          backgroundColor: ColorConst.pink,
                                          child: Icon(Icons.check,
                                              color: ColorConst.white),
                                        )
                                      : const CircleAvatar(
                                          backgroundColor: ColorConst.grey,
                                          child: Icon(Icons.check,
                                              color: ColorConst.black),
                                        ),
                                )
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return Container(
                            height: 1,
                            color: ColorConst.grey.withOpacity(0.2),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: ColorConst.pink, // Màu nền của BottomAppBar
        child: Container(
          height: 56,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total: \$$totalCost",
                style: GoogleFonts.nunito(
                    fontSize: 16,
                    color: ColorConst.white,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: double.infinity,
                child: InkWell(
                  onTap: totalCost > 0
                      ? () {
                          debugPrint("Test order button");
                          showDialog(
                              context: context,
                              barrierDismissible: false,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  scrollable: true,
                                  insetPadding: const EdgeInsets.symmetric(
                                      horizontal: 35, vertical: 70),
                                  content: Column(
                                    children: [
                                      Image.asset(ImgAsset.TAKEAWAY),
                                      Text("Thank You",
                                          style: GoogleFonts.nunito(
                                              fontSize: 36,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black)),
                                      Text("Your order is successfully",
                                          style: GoogleFonts.nunito(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600)),
                                      const SizedBox(height: 35),
                                      SizedBox(
                                        height: 50,
                                        width: 150,
                                        child: ElevatedButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                              Navigator.of(context)
                                                  .pushReplacement(
                                                      PageTransition(
                                                          child: const ScHome(),
                                                          type:
                                                              PageTransitionType
                                                                  .rightToLeft));
                                            },
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    ColorConst.pink),
                                            child: Text("OK",
                                                style: GoogleFonts.nunito(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold))),
                                      )
                                    ],
                                  ),
                                );
                              });
                        }
                      : null,
                  child: Flex(
                    direction: Axis.horizontal,
                    children: [
                      Text(
                        "ORDER",
                        style: GoogleFonts.nunito(
                            fontSize: 16,
                            color: ColorConst.white,
                            fontWeight: FontWeight.w700),
                      ),
                      SvgPicture.asset(SvgAsset.IG_ARROWRIGHT),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
