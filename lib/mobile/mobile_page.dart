import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'cards_screen.dart';

class MobilePage extends StatefulWidget {
  const MobilePage({Key? key}) : super(key: key);

  @override
  _MobilePageState createState() => _MobilePageState();
}

class _MobilePageState extends State<MobilePage> {
  bool status = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                // const Text(
                //   "Login",
                //   style: TextStyle(
                //       color: Colors.black,
                //       fontSize: 26,
                //       fontWeight: FontWeight.bold),
                // ),
                Image.asset("assets/sam.png", width: 250, height: 250),
                Stack(
                  children: <Widget>[
                    const TextField(
                      style: TextStyle(color: Color(0xFF4D70A6)),
                      decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0xFF4D70A6), width: 2),
                          ),
                          labelText: "Username",
                          labelStyle: TextStyle(
                              color: Color(0xFF4D70A6), fontSize: 14)),
                    ),
                    Positioned(
                      right: 1,
                      bottom: 8,
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: const Color(0xFFF1F3F6),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(50)),
                            boxShadow: [
                              BoxShadow(
                                  offset: const Offset(5, 5),
                                  color:
                                      const Color(0xFF4D70A6).withOpacity(0.2),
                                  blurRadius: 16),
                              const BoxShadow(
                                  offset: Offset(-10, -10),
                                  color: Color.fromARGB(170, 255, 255, 255),
                                  blurRadius: 10),
                            ]),
                        child: const Icon(
                          Icons.check,
                          color: Color(0xFF4D70A6),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const TextField(
                    style: TextStyle(color: Color(0xFF4D70A6)),
                    decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFF4D70A6), width: 2),
                        ),
                        labelText: "Password",
                        labelStyle:
                            TextStyle(color: Color(0xFF4D70A6), fontSize: 14))),
                const SizedBox(height: 20),
                Row(
                  children: const [
                    Text(
                      "Remember me",
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    Spacer(),
                    Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: Color(0xFF4D70A6),
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => CardsScreen()));
                  },
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    height: 80,
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    decoration: BoxDecoration(
                        color: Color(0xFFF1F3F6),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(10, 10),
                              color: Color(0xFF4D70A6).withOpacity(0.2),
                              blurRadius: 16),
                          BoxShadow(
                              offset: Offset(-10, -10),
                              color: Color.fromARGB(170, 255, 255, 255),
                              blurRadius: 10),
                        ]),
                    child: const Text(
                      "Login",
                      style: TextStyle(color: Color(0xFF4D70A6), fontSize: 16),
                    ),
                  ),
                ),
                Center(
                  child: RichText(
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: "Don't have an account?",
                          style: TextStyle(color: Colors.grey)),
                      TextSpan(
                          text: " Sign Up",
                          style: TextStyle(color: Color(0xFF4D70A6))),
                    ]),
                  ),
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => CardsScreen()));
                  },
                  child: Center(
                    child: SvgPicture.asset("assets/fingerprint.svg",
                        width: 60, height: 60),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
