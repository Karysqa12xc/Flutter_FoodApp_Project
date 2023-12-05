import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app_example/const/color_const.dart';
import 'package:food_app_example/const/img_asset.dart';
import 'package:food_app_example/const/svg_asset.dart';
import 'package:google_fonts/google_fonts.dart';

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
            Container(
              color: ColorConst.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Thịt bò sốt vang của người Ý",
                    style: GoogleFonts.nunito(),
                  ),
                  Text(
                    "Thịt bò sốt vang",
                    style: GoogleFonts.nunito(),
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(SvgAsset.IG_STAR),
                      Text(
                        "289 reviews",
                        style: GoogleFonts.nunito(),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "Open in".toUpperCase(),
                            style: GoogleFonts.nunito(),
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
                          child: Text(
                            "Contact",
                            style: GoogleFonts.nunito(),
                          ))
                    ],
                  ),
                ],
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
                        style: GoogleFonts.nunito()),
                    Text(
                        "Food is scrumptious, delicious, delectable, luscious,\ngreat tasting, much more than tasty, really appetizing,\nlip-smacking; the kind of food to have you licking your\nlips in anticipation. This is the word everyone wants to\nhear when bringing food to the table. Yummy food is\nnever unpalatable, plain tasting, distasteful or\ndisgusting. Veiw more",
                        style: GoogleFonts.nunito()),
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
                    Row(
                      children: [
                        Text("Menu".toUpperCase()),
                        Text(
                          "See all categories",
                          style: GoogleFonts.nunito(),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 260,
                      // width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListView.separated(
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return Row(
                                children: [
                                  SizedBox(
                                    height: 80,
                                    width: 80,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        ImgAsset.SUSHI,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 30),
                                  Column(
                                    children: [
                                      Text("data", style: GoogleFonts.nunito()),
                                      Text("data", style: GoogleFonts.nunito()),
                                    ],
                                  )
                                ],
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
                    Row(
                      children: [
                        Text("Menu".toUpperCase()),
                        Text(
                          "See all categories",
                          style: GoogleFonts.nunito(),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 200,
                      // width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListView.separated(
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Row(
                                        children: [
                                          const SizedBox(
                                            child: CircleAvatar(
                                              radius: 30,
                                              backgroundImage: AssetImage(
                                                ImgAsset.AVATAR,
                                              ),
                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Text("data",
                                                      style:
                                                          GoogleFonts.nunito()),
                                                  SvgPicture.asset(
                                                      SvgAsset.IG_STAR),
                                                ],
                                              ),
                                              Text("data",
                                                  style: GoogleFonts.nunito()),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Text("data", style: GoogleFonts.nunito()),
                                    ],
                                  )
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
