import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:recyclean/src/routes/routes.dart';

void main() => runApp(RecyClean());

class RecyClean extends StatelessWidget {
  final String _appName = 'RecyClean';

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor:Color.fromRGBO(143, 148, 251, 1)//or set color with: Color(0xFF0000FF)
    ));
    return MaterialApp(
      title: _appName,
      debugShowCheckedModeBanner: true,
      routes: myRoutes,
    );
  }
}
