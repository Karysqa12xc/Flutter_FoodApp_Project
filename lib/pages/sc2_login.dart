import 'package:flutter/material.dart';
import 'package:food_app_example/const/color_const.dart';
import 'package:food_app_example/const/img_asset.dart';
import 'package:food_app_example/pages/sc3_search.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class Sc2Login extends StatefulWidget {
  const Sc2Login({Key? key}) : super(key: key);

  @override
  _Sc2LoginState createState() => _Sc2LoginState();
}

class _Sc2LoginState extends State<Sc2Login> {
  TextEditingController _passwordController = TextEditingController();
  FocusNode focusNodeUser = FocusNode();
  FocusNode focusNodePassword = FocusNode();
  bool isDisplayKeyboard = true;
  // ignore: prefer_final_fields
  bool _isObscured = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    focusNodeUser.addListener(() {
      setState(() {
        isDisplayKeyboard = focusNodeUser.hasFocus;
      });
    });
    focusNodePassword.addListener(() {
      setState(() {
        isDisplayKeyboard = focusNodePassword.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _passwordController.dispose();
    focusNodePassword.dispose();
    focusNodeUser.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(ImgAsset.BG_LOGIN), fit: BoxFit.cover),
          ),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: ColorConst.black,
            ),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Image.asset(ImgAsset.PANDA_LOGO),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 27, left: 27),
                      child: Form(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextFormField(
                              focusNode: focusNodeUser,
                              style: GoogleFonts.nunitoSans(
                                  fontSize: 16, color: Colors.white),
                              decoration: const InputDecoration(
                                  hintText: "Username",
                                  hintStyle: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white70))),
                            ),
                            const Padding(padding: EdgeInsets.only(top: 30)),
                            TextFormField(
                              focusNode: focusNodePassword,
                              controller: _passwordController,
                              obscureText: _isObscured,
                              style: GoogleFonts.nunitoSans(
                                  fontSize: 16, color: Colors.white),
                              decoration: InputDecoration(
                                  hintText: "Password",
                                  suffixIcon: IconButton(
                                    icon: isDisplayKeyboard
                                        ? Icon(
                                            _isObscured
                                                ? Icons.visibility_off
                                                : Icons.visibility,
                                            color: Colors.white)
                                        : const Visibility(
                                            visible: true,
                                            child: Icon(Icons.visibility_off)),
                                    onPressed: () {
                                      setState(() {
                                        _isObscured = _isObscured;
                                      });
                                    },
                                  ),
                                  hintStyle: const TextStyle(
                                      color: Colors.white, fontSize: 16),
                                  enabledBorder: const UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  focusedBorder: const UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white70))),
                            ),
                            const SizedBox(height: 30),
                            InkWell(
                              onTap: () {
                                debugPrint("Test login");
                                Navigator.of(context).push(PageTransition(
                                    child: const Sc3Search(),
                                    type: PageTransitionType.rightToLeft));
                              },
                              child: Container(
                                  height: 51,
                                  width: 320,
                                  decoration: BoxDecoration(
                                      color: ColorConst.pink,
                                      borderRadius: BorderRadius.circular(5.0)),
                                  child: Center(
                                    child: Text("LOGIN",
                                        style: GoogleFonts.nunito(
                                            fontSize: 16, color: Colors.white)),
                                  )),
                            ),
                            const SizedBox(height: 90),
                            Column(
                              children: [
                                InkWell(
                                  // ignore: avoid_print
                                  onTap: () =>
                                      debugPrint("test connect facebook"),
                                  child: Container(
                                      height: 51,
                                      width: 320,
                                      decoration: BoxDecoration(
                                          color: ColorConst.blue,
                                          borderRadius:
                                              BorderRadius.circular(5.0)),
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 42, right: 44),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                  ImgAsset.ICON_FACEBOOK),
                                              Text("CONNECT WITH FACEBOOK",
                                                  style: GoogleFonts.nunito(
                                                      color: Colors.white,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w600)),
                                            ],
                                          ),
                                        ),
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 9.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Don't have an account? ",
                                          style: GoogleFonts.nunito(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13,
                                              color: Colors.white)),
                                      InkWell(
                                        onTap: () {
                                          debugPrint("Test sign up");
                                        },
                                        child: Text("Sign up",
                                            style: GoogleFonts.nunito(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13,
                                                color: ColorConst.pink)),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
