import 'package:flutter/material.dart';
import 'package:recyclean/src/routes/routes.dart';

void main() => runApp(RecyClean());

class RecyClean extends StatelessWidget {
  final String _appName = 'RecyClean';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _appName,
      debugShowCheckedModeBanner: true,
      routes: myRoutes,
    );
  }
}
