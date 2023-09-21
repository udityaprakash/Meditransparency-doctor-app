import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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