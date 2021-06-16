import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vc_app/utilities/constants.dart';
import 'screens/welcome_concierge.dart';
import 'utilities/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // Define the default brightness and colors.
          brightness: Brightness.light,
          primaryColor: kSecondaryColor,
          accentColor: Colors.cyan[600],

          // textTheme: TextTheme(
          //   headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          //   headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          //   bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
          // ),

          textTheme: GoogleFonts.openSansTextTheme(textTheme).copyWith(
            bodyText2: GoogleFonts.openSans(textStyle: textTheme.bodyText2),
          ),
        ),
        home: WelcomeScreen(),
        routes: customRoutes);
  }
}
