import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'details_screen.dart';

class CardsScreen extends StatefulWidget {
  const CardsScreen({Key? key}) : super(key: key);

  @override
  _CardsScreenState createState() => _CardsScreenState();
}

class _CardsScreenState extends State<CardsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
              height: MediaQuery.of(context).size.height,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 30),
                  const Text(
                    "Cards",
                    style: TextStyle(
                        color: Color(0xffa20d5f),
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Ali Qadomy",
                        style: TextStyle(
                            color: Color(0xffa20d5f),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        child: const Icon(FontAwesomeIcons.userCircle,
                            size: 30, color: Color(0xffa20d5f)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    "Dashboard",
                    style: TextStyle(
                        color: Color(0xFFc2d0db),
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
                  ),
                  listTile("Saving Account", "155.123 \$",
                      FontAwesomeIcons.creditCard),
                  listTile("Saving Account", "124.80 ₪",
                      FontAwesomeIcons.creditCard),
                  SizedBox(height: 40),
                  listTile("Points", "600", FontAwesomeIcons.gift),
                ],
              )),
        ),
      ),
    );
  }

  Widget listTile(String title, String cost, IconData icon) {
    return GestureDetector(
      onTap: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => DetailsScreen())),
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        height: 120,
        margin: const EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
            color: Color(0xFFF1F3F6),
            borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                  offset: Offset(10, 10),
                  color: Color(0xFF4D70A6).withOpacity(0.2),
                  blurRadius: 36),
              BoxShadow(
                  offset: Offset(-10, -10),
                  color: Color.fromARGB(170, 255, 255, 255),
                  blurRadius: 10),
            ]),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: const Color(0xFFc2d0db).withOpacity(.7)),
                  ),
                  Row(
                    children: [
                      Icon(icon, size: 26, color: Color(0xffc2d0db)),
                      const SizedBox(width: 12),
                      Text(
                        cost,
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xa4a20d5f).withOpacity(.7)),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
