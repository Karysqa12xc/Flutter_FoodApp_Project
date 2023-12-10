import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app_example/const/color_const.dart';
import 'package:food_app_example/const/svg_asset.dart';
import 'package:food_app_example/models/restaurant.dart';

import 'package:google_fonts/google_fonts.dart';

class GridMain extends StatelessWidget {
  final List<dynamic> items;

  GridMain({required this.items});
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 1.0,
          mainAxisSpacing: 2.0,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          Restaurant restaurantInfo = Restaurant.fromJson(items[index]);
          return InkWell(
            onTap: () {
              print("Test touch card in grid view");
            },
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                decoration: BoxDecoration(
                    color: ColorConst.white,
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
                      height: 90,
                      width: double.infinity,
                      child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15)),
                          child: Image.asset(
                            restaurantInfo.imagePath,
                            fit: BoxFit.cover,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            restaurantInfo.title,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            textAlign: TextAlign.left,
                            style: GoogleFonts.nunito(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Text(
                            restaurantInfo.description,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: GoogleFonts.nunito(
                                fontSize: 11, color: ColorConst.greyBold),
                          ),
                          Row(
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(SvgAsset.IG_STAR),
                                  SvgPicture.asset(SvgAsset.IG_STAR),
                                  SvgPicture.asset(SvgAsset.IG_STAR),
                                  SvgPicture.asset(SvgAsset.IG_STAR),
                                  SvgPicture.asset(SvgAsset.IG_STAR,
                                      colorFilter: const ColorFilter.mode(
                                          ColorConst.grey, BlendMode.srcIn)),
                                ],
                              ),
                              Text(
                                restaurantInfo.reviews + " reviews",
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
