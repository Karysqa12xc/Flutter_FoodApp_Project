import 'package:flutter/material.dart';
import 'package:food_app_example/path_image.dart';
import 'package:google_fonts/google_fonts.dart';

class Sc2Login extends StatefulWidget {
  const Sc2Login({Key? key}) : super(key: key);

  @override
  _Sc2LoginState createState() => _Sc2LoginState();
}

class _Sc2LoginState extends State<Sc2Login> {
  TextEditingController _passwordController = TextEditingController();
  // ignore: prefer_final_fields
  bool _isObscured = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(PathImage.BG_LOGIN), fit: BoxFit.cover),
          ),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0x80000000),
            ),
            child: Column(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Image.asset(PathImage.PANDA_LOGO),
                )),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 27, left: 27),
                    child: Form(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextFormField(
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
                            controller: _passwordController,
                            obscureText: _isObscured,
                            style: GoogleFonts.nunitoSans(
                                fontSize: 16, color: Colors.white),
                            decoration: InputDecoration(
                                hintText: "Password",
                                suffixIcon: IconButton(
                                  icon: Icon(
                                      _isObscured
                                          ? Icons.visibility_off
                                          : Icons.visibility,
                                      color: Colors.white),
                                  onPressed: () {
                                    setState(() {
                                      _isObscured = !_isObscured;
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
                          Padding(
                              padding: const EdgeInsets.only(top: 84),
                              child: InkWell(
                                onTap: () => print('test login'),
                                child: Container(
                                    height: 51,
                                    width: 320,
                                    decoration: BoxDecoration(
                                        color: const Color(0xFFDB166E),
                                        borderRadius:
                                            BorderRadius.circular(5.0)),
                                    child: Center(
                                      child: Text("LOGIN",
                                          style: GoogleFonts.nunito(
                                              fontSize: 16,
                                              color: Colors.white)),
                                    )),
                              )),
                          Padding(
                            padding: const EdgeInsets.only(top: 141),
                            child: InkWell(
                              onTap: () => print("test connect facebook"),
                              child: Container(
                                  // ignore: avoid_print
                                  height: 51,
                                  width: 320,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFF2B65D1),
                                      borderRadius: BorderRadius.circular(5.0)),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 42, right: 44),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(PathImage.ICON_FACEBOOK),
                                          Text("CONNECT WITH FACEBOOK",
                                              style: GoogleFonts.nunito(
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600)),
                                        ],
                                      ),
                                    ),
                                  )),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 9.0, bottom: 9.0),
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
                                    print("Test sign up");
                                  },
                                  child: Text("Sign up",
                                      style: GoogleFonts.nunito(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                          color: const Color(0xFFDB166E))),
                                )
                              ],
                            ),
                          ),
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
      debugShowCheckedModeBanner: false,
    );
  }
}
