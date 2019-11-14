import 'package:flutter/material.dart';
import 'package:recyclean/src/pages/landing_page.dart';
import 'package:recyclean/src/pages/login_page.dart';
import 'package:recyclean/src/pages/recover_page.dart';
import 'package:recyclean/src/pages/signup_page.dart';
import 'package:recyclean/src/pages/home_page.dart';


final myRoutes = {
  '/':        (BuildContext context) => LandingPage(),
  '/landing': (BuildContext context) => LandingPage(),
  '/login':   (BuildContext context) => LoginPage(),
  '/recover': (BuildContext context) => RecoverPage(),
  '/signup':  (BuildContext context) => SignUpPage(),
  '/home':    (BuildContext context) => HomePage(),
};
