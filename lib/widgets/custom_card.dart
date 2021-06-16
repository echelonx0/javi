import 'package:flutter/material.dart';
import 'package:vc_app/utilities/constants.dart';

class CustomDisplayCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //todo: add agent phone number

    return Padding(
      padding: const EdgeInsets.all(5),
      child: GestureDetector(
        onTap: () {
          //Do something awesome
        },
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
                color: Color(0xff7E8A97),
                borderRadius: BorderRadius.circular(15)),
            height: 230,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(11.5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: myPadding,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Color(0xff1A1C20),
                            ),
                            Text(
                              "Owerri",
                              style: kLandingPageSmallTextStyle,
                            ),
                          ],
                        ),
                        Icon(
                          Icons.image,
                          color: Colors.white,
                          size: 25,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: myPadding,
                    child: Text('Help needed in Aba',
                        style: kHeadingtext.copyWith(color: Color(0xff000000))),
                  ),
                  Padding(
                    padding: myPadding,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        WordBubble(
                          text: 'Fast thinker required',
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        WordBubble(
                          text: 'Quick pay',
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: myPadding,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          Icons.info,
                          color: Colors.black,
                          size: 25,
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Text(
                          'Be among the first to apply',
                          style: kLandingPageSmallTextStyle,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 10, 5, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/user.png'),
                              maxRadius: 10,
                            ),
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/user.png'),
                              maxRadius: 10,
                            ),
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/user.png'),
                              maxRadius: 10,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Text(
                          'Posted 3 days ago',
                          style: kLandingPageSmallTextStyle,
                        )
                      ],
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

class WordBubble extends StatelessWidget {
  final String text;

  const WordBubble({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Text(
          text,
          style: kminiTextStyle,
        ),
      ),
    );
  }
}
