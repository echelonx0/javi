import 'package:flutter/material.dart';
import 'package:vc_app/utilities/constants.dart';

import 'home.dart';

int index = 0;

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  List widgets = [_firstContainer(), _secondContainer(), _thirdContainer()];

  var animatedWidget = _firstContainer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            AnimatedSwitcher(
              duration: Duration(milliseconds: 500),
              child: animatedWidget,
              transitionBuilder: (child, animation) => ScaleTransition(
                scale: animation,
                child: child,
              ),
            ),
            Positioned(
                bottom: 20,
                right: 15,
                child: index == 2
                    ? BasicButton(
                        text: 'Sign In',
                      )
                    : ElevatedButton(
                        style:
                            ElevatedButton.styleFrom(primary: kSecondaryColor),
                        onPressed: () {
                          switch (index) {
                            case 0:
                              {
                                setState(() {
                                  animatedWidget = _secondContainer();
                                  index = 1;
                                });
                              }
                              break;

                            case 1:
                              {
                                setState(() {
                                  animatedWidget = _thirdContainer();
                                  index = 2;
                                });
                              }
                              break;

                            default:
                              {
                                //Navigate to Sign in screen

                              }
                              break;
                          }
                        },
                        child: Text(
                          'Next',
                          style: textStyleA,
                        ),
                      ))
          ],
        ),
      ),
    );
  }
}

class BasicButton extends StatelessWidget {
  final String text;

  const BasicButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(primary: kSecondaryColor),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
      },
      child: Text(
        text,
        style: textStyleA,
      ),
    );
  }
}

Widget _firstContainer() {
  return Container(
    key: ValueKey<int>(index),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 250,
          height: 250,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/javilogo.png'),
                  fit: BoxFit.contain)),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Welcome to Javi',
            style: kLandingPageTextStyle,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(28.0),
          child: Text(
            'We make property transactions simple',
            style: kLandingPageTextStyle,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    ),
  );
}

Widget _secondContainer() {
  return Container(
    key: ValueKey<int>(index),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: double.infinity,
          height: 250,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/deal.jpg'), fit: BoxFit.contain)),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Bespoke Service, Flat Fees, No Agents',
            style: kLandingPageTextStyle,
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'We do all the work for you. No need to bother with agents or lawyers',
            style: kLandingPageSmallTextStyle,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    ),
  );
}

Widget _thirdContainer() {
  return Container(
    key: ValueKey<int>(index),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 250,
          height: 250,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/3053967.jpg'), fit: BoxFit.cover)),
        ),
        Text(
          'Easily Buy, Sell Or Rent Properties',
          style: kLandingPageTextStyle,
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'We handle the advertising, marketing, pictures and even legal search',
            style: kLandingPageSmallTextStyle,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    ),
  );
}
