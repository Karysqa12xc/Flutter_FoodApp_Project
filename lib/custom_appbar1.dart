// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:food_app_example/const/color_const.dart';
import 'package:food_app_example/const/path_assets.dart';

class CustomAppbar1 extends StatelessWidget implements PreferredSizeWidget {
  final Function(bool) onToggle;
  final bool isGridMode;
  const CustomAppbar1({
    Key? key,
    required this.onToggle,
    required this.isGridMode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 126,
        color: const Color(ColorConst.pinkBold),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: Color(ColorConst.pink),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 5, right: 16, left: 16),
                  child: Column(
                    children: [
                      TextFormField(
                          style: GoogleFonts.nunito(
                              color: Colors.black, fontSize: 14),
                          decoration: InputDecoration(
                            hintText: "Search for address food...",
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 12),
                            hintStyle: GoogleFonts.nunito(
                                color: const Color(ColorConst.grey),
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                            prefixIcon: SizedBox(
                              width: 90,
                              child: Row(
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        debugPrint("test arrow left");
                                      },
                                      icon: SvgPicture.asset(
                                          PathAsset.IG_ARROWLEFT)),
                                  Container(
                                    width: 1.0,
                                    height: 29,
                                    color: const Color(ColorConst.grey),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Icon(
                                      Icons.search,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            suffixIcon: SizedBox(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      debugPrint("Test location button");
                                    },
                                    child: const Icon(
                                      Icons.location_on,
                                      color: Color(ColorConst.pink),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text("VietNam",
                                        style: GoogleFonts.nunito(
                                          color: Colors.black,
                                          fontSize: 12,
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            isDense: true,
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: const BorderSide(
                                    color: Color(ColorConst.pink))),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          )),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(top: 10),
                          alignment: Alignment.bottomLeft,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              SizedBox(
                                width: 95,
                                child: InkWell(
                                  onTap: () {},
                                  child: Text(
                                    "Nearby",
                                    style: GoogleFonts.nunito(
                                        color: const Color(ColorConst.white),
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 95,
                                child: InkWell(
                                  onTap: () {},
                                  child: Text(
                                    "Popular",
                                    style: GoogleFonts.nunito(
                                        color: const Color(ColorConst.white),
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 95,
                                child: InkWell(
                                  onTap: () {},
                                  child: Text(
                                    "Top review",
                                    style: GoogleFonts.nunito(
                                        color: const Color(ColorConst.white),
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 95,
                                child: InkWell(
                                  onTap: () {},
                                  child: Text(
                                    "Recommend",
                                    style: GoogleFonts.nunito(
                                        color: const Color(ColorConst.white),
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 40,
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(PathAsset.IG_FILTER),
                        ),
                        Text(
                          "Filter",
                          style: GoogleFonts.nunito(
                              color: Color(ColorConst.white)),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              onToggle(!isGridMode);
                            },
                            icon: SvgPicture.asset(PathAsset.IG_GRID)),
                        IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(PathAsset.IG_MESSAGE_SQUARE))
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.maxFinite, 126);
}