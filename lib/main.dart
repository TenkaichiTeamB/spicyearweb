import 'package:management/constants.dart';
import 'package:management/controllers/MainIndexController.dart';
import 'package:management/controllers/MenuController.dart';
import 'package:management/controllers/SelectedInfoController.dart';
import 'package:management/screens/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Admin Pannel',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white),
        canvasColor: secondaryColor,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => MenuController(),
          ),
          ChangeNotifierProvider(
            create: (context) => MainIndexController(),
          ),
          ChangeNotifierProvider(
            create: (context) => SelectedInfoController(),
          ),
        ],
        child: MainScreen(),
      ),
    );
  }
}
