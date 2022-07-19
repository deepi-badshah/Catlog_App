import 'package:codepur/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:codepur/pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // constructor

  @override
  Widget build(BuildContext context) {
    // context holds the information of widget's loacation
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
        //primaryTextTheme: GoogleFonts.latoTextTheme(),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      //initialRoute: "/home", // initially this will be the bydefault page
      routes: {
        // it needs map
        "/": (context) => LoginPage(), // Bydefault will be login page
        "/home": (context) => HomePage(),
        "/Login": (context) => LoginPage(),
      },
    );
  }
}
