import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app_example/const/color_const.dart';
import 'package:food_app_example/const/path_assets.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppbar3 extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 230,
        color: const Color(0xFFFCF9F9),
        child: Column(children: [
          Container(
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(PathAsset.IG_PLUS)),
                const SizedBox(width: 80),
                Text(
                  "Book a table".toUpperCase(),
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Expanded(
              child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 30,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(18),
                child: Column(
                  children: [
                    const Text("T"),
                    const SizedBox(height: 14),
                    InkWell(
                      onTap: () {
                        debugPrint("Day test $index");
                      },
                      child: const Text("26"),
                    )
                  ],
                ),
              );
            },
          )),
          const Divider(
            color: Color(ColorConst.black),
          ),
          Expanded(
              child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 15,
            itemBuilder: (BuildContext context, int index) {
              return Row(
                children: [
                  InkWell(
                    onTap: () {
                      debugPrint("Time test $index");
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          decoration: BoxDecoration(
                              color: const Color(ColorConst.pink),
                              borderRadius: BorderRadius.circular(5)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "10:14",
                              style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                            ),
                          )),
                    ),
                  ),
                ],
              );
            },
          )),
        ]),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 300);
}
