import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app_example/const/color_const.dart';
import 'package:food_app_example/const/img_asset.dart';
import 'package:food_app_example/const/svg_asset.dart';
import 'package:food_app_example/pages/sc16_reviews.dart';
import 'package:food_app_example/pages/sc7_categories.dart';
import 'package:food_app_example/pages/sc9_and_11_book_a_table.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class Sc6DetailsRestaurant extends StatefulWidget {
  const Sc6DetailsRestaurant({Key? key}) : super(key: key);

  @override
  _Sc6DetailsRestaurantState createState() => _Sc6DetailsRestaurantState();
}

class _Sc6DetailsRestaurantState extends State<Sc6DetailsRestaurant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.whiteSmoke,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(children: [
            SizedBox(
              width: double.infinity,
              child: ClipRRect(
                child: Image.asset(
                  ImgAsset.CURRY,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: ColorConst.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Thịt bò sốt vang của người Ý",
                      style: GoogleFonts.nunito(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "Ngon hơn khi để nguội",
                      style: GoogleFonts.nunito(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: ColorConst.greyBold),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(SvgAsset.IG_STAR),
                        SvgPicture.asset(SvgAsset.IG_STAR),
                        SvgPicture.asset(SvgAsset.IG_STAR),
                        SvgPicture.asset(SvgAsset.IG_STAR),
                        SvgPicture.asset(SvgAsset.IG_STAR,
                            colorFilter: ColorFilter.mode(
                                ColorConst.grey, BlendMode.srcIn)),
                        SizedBox(width: 10),
                        Text(
                          "289 reviews",
                          style: GoogleFonts.nunito(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              color: ColorConst.greyBold),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Open in".toUpperCase(),
                              style: GoogleFonts.nunito(
                                  color: ColorConst.greyBold),
                            ),
                            Text(
                              "10:30 - 23:30",
                              style: GoogleFonts.nunito(),
                            )
                          ],
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: ColorConst.pink),
                            onPressed: () {},
                            child: Row(
                              children: [
                                Icon(Icons.phone),
                                Text(
                                  "Contact",
                                  style: GoogleFonts.nunito(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ))
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              color: ColorConst.white,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Photos".toUpperCase()),
                    ),
                    SizedBox(
                        height: 80,
                        width: double.infinity,
                        child: ListView.builder(
                          itemCount: 5,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return SizedBox(
                              height: 100,
                              width: 100,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(6),
                                  child: Image.asset(
                                    ImgAsset.CURRY,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            );
                          },
                        )),
                  ]),
            ),
            const SizedBox(height: 10),
            Container(
              color: ColorConst.white,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Descriptions".toUpperCase(),
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.bold,
                            color: ColorConst.black)),
                    SizedBox(height: 10),
                    Text(
                        "Food is scrumptious, delicious, delectable, luscious,\ngreat tasting, much more than tasty, really appetizing,\nlip-smacking; the kind of food to have you licking your\nlips in anticipation. This is the word everyone wants to\nhear when bringing food to the table. Yummy food is\nnever unpalatable, plain tasting, distasteful or\ndisgusting. View more",
                        style: GoogleFonts.nunito(
                            fontSize: 14, fontWeight: FontWeight.w500)),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
                color: ColorConst.white,
                width: double.infinity,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Menu".toUpperCase(),
                            style: GoogleFonts.nunito(fontSize: 14),
                          ),
                          InkWell(
                            onTap: () {
                              debugPrint("Text See all categories btn");
                              Navigator.of(context).push(PageTransition(
                                  child: Sc7Categories(),
                                  type: PageTransitionType.fade));
                            },
                            child: Text(
                              "See all categories",
                              style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.bold,
                                  color: ColorConst.pink),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 260,
                      // width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ListView.separated(
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      height: 60,
                                      width: 60,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          ImgAsset.SUSHI,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 20),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Onion Rings",
                                            style: GoogleFonts.nunito(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold)),
                                        Text("\$39.00",
                                            style: GoogleFonts.nunito()),
                                      ],
                                    )
                                  ],
                                ),
                              );
                            },
                            separatorBuilder: (context, index) {
                              return Container(
                                height: 1,
                                color: ColorConst.grey,
                              );
                            },
                            itemCount: 3),
                      ),
                    ),
                  ],
                )),
            const SizedBox(height: 10),
            Container(
                color: ColorConst.white,
                width: double.infinity,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("reviews".toUpperCase()),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(PageTransition(
                                  child: Sc16Reviews(),
                                  type: PageTransitionType.fade));
                            },
                            child: Text(
                              "See all reviews",
                              style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.bold,
                                  color: ColorConst.pink),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 250,
                      // width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListView.separated(
                            itemBuilder: (context, index) {
                              return Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Row(
                                          children: [
                                            SizedBox(width: 20),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const SizedBox(
                                                    child: CircleAvatar(
                                                      radius: 30,
                                                      backgroundImage:
                                                          AssetImage(
                                                        ImgAsset.AVATAR,
                                                      ),
                                                    ),
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text("Anna Rose",
                                                          style: GoogleFonts
                                                              .nunito(
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold)),
                                                      SizedBox(
                                                        width: 20,
                                                      ),
                                                      SvgPicture.asset(
                                                          SvgAsset.IG_STAR),
                                                      SvgPicture.asset(
                                                          SvgAsset.IG_STAR),
                                                      SvgPicture.asset(
                                                          SvgAsset.IG_STAR),
                                                      SvgPicture.asset(
                                                          SvgAsset.IG_STAR),
                                                      SvgPicture.asset(
                                                          SvgAsset.IG_STAR),
                                                    ],
                                                  ),
                                                  Text("2 hours",
                                                      style:
                                                          GoogleFonts.nunito()),
                                                  Text(
                                                      "We had a chance to try some of the food from the restaurant prepared for the food festival, and the chicken croquettes were simply amazing! We had a chance to try some of the food from the restaurant prepared for the food festival, and the chicken croquettes were simply amazing! We had a chance to try some of the food from the restaurant prepared for the food festival, and the chicken croquettes were simply amazing! We had a chance to try some of the food from the restaurant prepared for the food festival, and the chicken croquettes were simply amazing!",
                                                      style:
                                                          GoogleFonts.nunito()),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              );
                            },
                            separatorBuilder: (context, index) {
                              return Container(
                                height: 1,
                                color: ColorConst.grey,
                              );
                            },
                            itemCount: 2),
                      ),
                    ),
                  ],
                )),
          ]),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: ColorConst.pink, // Màu nền của BottomAppBar
        child: Container(
          height: 56,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: InkWell(
            onTap: () {
              debugPrint("Test book a table");
              Navigator.of(context).push(PageTransition(
                  child: Sc9And11BookATable(),
                  type: PageTransitionType.leftToRight));
            },
            child: Center(
              child: Text(
                "Book a table".toUpperCase(),
                style: GoogleFonts.nunito(
                    fontSize: 16,
                    color: ColorConst.white,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
