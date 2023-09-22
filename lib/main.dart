import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meditransparency_doctor/controls/constants/colors.dart';

import 'controls/route.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) => runApp(const MyApp()));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: transparentclr,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splashspage',

      onGenerateRoute: RouteGenerator.generateRoute,
      theme: ThemeData(
        // scaffoldBackgroundColor: Color.fromARGB(255, 239,34,92),
        textTheme: Typography().white,
      ),
    );
  }
}