import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RecyClean'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            Container(
              child: DrawerHeader(
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.exit_to_app,
                      size: 70.0,
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Salir',
                style: TextStyle(fontSize: 20.0),
              ),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/landing');
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Center(
              child: Text('Bienvenido a RECYCLEAN'),
            ),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/landing');
            },
            child: Text(
              'Salir',
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 15,
                  fontFamily: 'QuicksandBold'),
            ),
          ),
        ],
      ),
    );
  }
}
