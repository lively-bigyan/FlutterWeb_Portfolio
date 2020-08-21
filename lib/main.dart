import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/root_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerUp: (event) => Get.focusScope.unfocus(),
      child: GetMaterialApp(
        theme: ThemeData(
            accentColor: Color(0xffEF8833),
            brightness: Brightness.dark,
            textTheme: GoogleFonts.quicksandTextTheme()
                .apply(displayColor: Colors.white, bodyColor: Colors.grey[100])
                .copyWith(
                    headline3: GoogleFonts.ubuntu(
                        fontSize: 28, fontWeight: FontWeight.bold)),
            primaryTextTheme: GoogleFonts.quicksandTextTheme()
                .apply(displayColor: Colors.white, bodyColor: Colors.white)),
        debugShowCheckedModeBanner: false,
        home: MyHomePage(),
      ),
    );
  }
}
