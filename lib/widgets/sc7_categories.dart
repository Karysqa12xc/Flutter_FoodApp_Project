// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app_example/const/path_assets.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:food_app_example/const/color_const.dart';
import 'package:food_app_example/custom_app_bar2.dart';

class Sc7Categories extends StatefulWidget {
  const Sc7Categories({
    Key? key,
  }) : super(key: key);

  @override
  _Sc7CategoriesState createState() => _Sc7CategoriesState();
}

class _Sc7CategoriesState extends State<Sc7Categories> {
  List<String> Options = ["STARTERS", "MAIN", "SIDES", "DESSERTS"];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
            appBar: CustomAppBar2(
              icons: const [
                Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                Icon(
                  Icons.settings,
                  color: Colors.white,
                )
              ],
              title: Text(
                "ALL CATEGORIES",
                style: GoogleFonts.nunito(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ),
            body: Column(children: <Widget>[
              SizedBox(
                height: 68,
                width: double.infinity,
                child: Flex(
                  direction: Axis.horizontal,
                  children: [
                    Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: Options.length,
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                              onTap: () {
                                setState(() {
                                  _selectedIndex = index;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(children: [
                                  Container(
                                    decoration: _selectedIndex == index
                                        ? const BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                    color:
                                                        Color(ColorConst.pink))),
                                          )
                                        : null,
                                    child: _selectedIndex == index
                                        ? Text(Options[index],
                                            style: GoogleFonts.nunito(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold))
                                        : Text(Options[index],
                                            style: GoogleFonts.nunito(
                                                fontSize: 14,
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold)),
                                  ),
                                  const SizedBox(width: 25)
                                ]),
                              ));
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 10,
                width: double.infinity,
                color: Colors.grey.withOpacity(0.1),
              ),
              Expanded(child: _Sc7Main())
            ]),
            bottomNavigationBar: BottomAppBar(
              height: 50,
              color: const Color(ColorConst.whiteSmoke),
              child: Center(
                child: InkWell(
                  onTap: () {},
                  child: SvgPicture.asset(
                    PathAsset.IG_ROTATE_CW,
                  ),
                ),
              ),
            )),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class _Sc7Main extends StatelessWidget {
  const _Sc7Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
            child: Row(
              children: [
                Flexible(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                      height: 60,
                      width: 60,
                      child: Image.asset(PathAsset.HAMBURGER)),
                )),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Banh my kep",
                      style: GoogleFonts.nunito(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "132",
                      style: GoogleFonts.nunito(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    )
                  ],
                )),
              ],
            ),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return const Divider(
          color: Colors.grey,
          height: 2.0,
        );
      },
    );
  }
}
