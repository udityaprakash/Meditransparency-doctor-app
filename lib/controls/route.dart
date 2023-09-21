import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/afterloginpages/Bills/bill.dart';
import '../screens/afterloginpages/Line_monitor/live_monitor.dart';
import '../screens/afterloginpages/consult/consult.dart';
import '../screens/afterloginpages/home_page.dart';
import '../screens/afterloginpages/laboratory/laboratory.dart';
import '../screens/afterloginpages/medicines/medicines.dart';
import '../screens/afterloginpages/patient/patient.dart';
import '../screens/landing_page.dart';
import '../screens/login_page.dart';
import '../screens/privacypolicy.dart';
import '../screens/splash_page.dart';
import '../screens/termsofuse.dart';

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/homepage':
        return MaterialPageRoute(builder: (_) => const Homepage());
      case '/splashspage':
        return MaterialPageRoute(builder: (_) => const Splashscreen());
      case '/login':
        return MaterialPageRoute(builder: (_) => const login_page());
      case '/privacy_policy':
        return MaterialPageRoute(builder: (_) => const privacy_policy());
      case '/termsofuse':
        return MaterialPageRoute(builder: (_) => const Termsofuse());
      case '/home_page':
        return MaterialPageRoute(builder: (_) => const home_page());
      case '/consult_page':
        return MaterialPageRoute(builder: (_) => const consult_page());
      case '/laboratory_page':
        return MaterialPageRoute(builder: (_) => const laboratory_page());
      case '/bill_page':
        return MaterialPageRoute(builder: (_) => const bill_page()); 
      case '/patient':
        return MaterialPageRoute(builder: (_) => const patient());
      case '/medicines':
        return MaterialPageRoute(builder: (_) => const medicines());
      case '/live_monitor':
        return MaterialPageRoute(builder: (_) => const live_monitor());            
      default:
        return null;
    }
  }
}
