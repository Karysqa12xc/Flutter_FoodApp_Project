import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app_example/const/color_const.dart';
import 'package:food_app_example/const/img_asset.dart';

import 'package:food_app_example/const/svg_asset.dart';
import 'package:food_app_example/widgets/custom_app_bar2.dart';
import 'package:google_fonts/google_fonts.dart';

class Sc15OrderHistory extends StatefulWidget {
  const Sc15OrderHistory({Key? key}) : super(key: key);

  @override
  _Sc15OrderHistoryState createState() => _Sc15OrderHistoryState();
}

class _Sc15OrderHistoryState extends State<Sc15OrderHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar2(
        icons: const [
          Icon(
            Icons.search,
            color: ColorConst.white,
          ),
          Visibility(
              visible: true,
              child: Icon(Icons.settings, color: ColorConst.white))
        ],
        title: Text(
          "order history".toUpperCase(),
          textAlign: TextAlign.center,
          style: GoogleFonts.nunito(
              fontSize: 14, color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration: BoxDecoration(
                    color: ColorConst.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: const Offset(0, 3))
                    ]),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: <Widget>[
                            SizedBox(
                              height: 60,
                              width: 60,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.asset(
                                    ImgAsset.SPRING_ROLL,
                                    fit: BoxFit.contain,
                                  )),
                            ),
                            const SizedBox(width: 15),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Awful Potato Bagel",
                                    style: GoogleFonts.nunito(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700)),
                                Text("Truffle with mashed potato",
                                    style: GoogleFonts.nunito(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400,
                                        color: ColorConst.greyBold)),
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
                                                ColorConst.grey,
                                                BlendMode.srcIn)),
                                      ],
                                    ),
                                    const SizedBox(width: 4),
                                    Text(
                                      "289 reviews",
                                      style: GoogleFonts.nunito(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700,
                                          color: ColorConst.grey),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: Colors.grey.withOpacity(0.3),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(SvgAsset.IG_LIST),
                                const SizedBox(width: 5),
                                Text("28 Nov 2021 10 : 32 AM",
                                    style: GoogleFonts.nunito(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: ColorConst.black)),
                              ],
                            ),
                            Text(
                              "\$ " "332.0",
                              style: GoogleFonts.nunito(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: ColorConst.pink),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}