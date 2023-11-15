import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app_example/const/color_const.dart';
import 'package:food_app_example/const/path_assets.dart';
import 'package:food_app_example/models/item_food.dart';
import 'package:google_fonts/google_fonts.dart';

class ListMain extends StatelessWidget {
  final List<ItemFood> items;

  ListMain({required this.items});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              print("Test touch card in list view");
            },
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration: BoxDecoration(
                    color: const Color(ColorConst.white),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: const Offset(0, 3))
                    ]),
                child: Column(
                  children: [
                    Container(
                      height: 200,
                      width: double.infinity,
                      child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15)),
                          child: Image.asset(
                            items[index].imagePath,
                            fit: BoxFit.cover,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            items[index].title,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            textAlign: TextAlign.left,
                            style: GoogleFonts.nunito(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            items[index].description,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: GoogleFonts.nunito(
                                fontSize: 11,
                                color: const Color(ColorConst.greyBold)),
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(PathAsset.IG_STAR),
                                  SvgPicture.asset(PathAsset.IG_STAR),
                                  SvgPicture.asset(PathAsset.IG_STAR),
                                  SvgPicture.asset(PathAsset.IG_STAR),
                                  SvgPicture.asset(PathAsset.IG_STAR,
                                      colorFilter: const ColorFilter.mode(
                                          Color(ColorConst.grey),
                                          BlendMode.srcIn)),
                                ],
                              ),
                              SizedBox(width: 10),
                              Text(
                                items[index].reviews,
                                style: GoogleFonts.nunito(fontSize: 11),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
