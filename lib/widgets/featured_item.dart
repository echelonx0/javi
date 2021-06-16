import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeaturedItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //Do something awesome
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white70,
        ),
        height: 230,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
//todo look at the design of this
            Stack(
              children: <Widget>[
                Container(
                  height: 125,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(10), right: Radius.circular(8)),
                    image: DecorationImage(
                      image: AssetImage('assets/investnglogo.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.redAccent.withOpacity(0.5),
                          borderRadius: BorderRadius.all(
                            Radius.circular(3),
                          )),
                      width: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(
                            "5",
                            style: GoogleFonts.oswald(
                                fontSize: 15, color: Colors.white),
                          ),
                          Icon(
                            Icons.image,
                            color: Colors.white,
                            size: 25,
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Text(
                "N5",
                style: GoogleFonts.oswald(fontSize: 13, color: Colors.red),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "ShortDescription",
                    style: GoogleFonts.oswald(fontSize: 14),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Text("Location",
                        style: GoogleFonts.oswald(fontSize: 14)),
                  ),
                ],
              ),
            ),
            Flexible(
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 35, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(),
                        SizedBox(
                          width: 25,
                        ),
                        Container(),
                      ],
                    ))),
          ],
        ),
      ),
    );
  }
}
