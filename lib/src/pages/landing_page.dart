import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Color.fromARGB(255, 12, 20, 61),
        body: Container(
          // alignment: Alignment.topCenter,
          padding: EdgeInsets.all(40),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: <Color>[
                  Color.fromARGB(255, 56, 39, 180),
                  Color.fromARGB(255, 100, 24, 164),
                ]
              ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              // SizedBox(
              //   height: 5.0,
              // ),
              Container(
                child: Image(
                  image: AssetImage('images/logo2.png'),
                  height: 180,
                  alignment: Alignment.center,
                  // width: 100,
                ),
              ),
              // SizedBox(
              //   height: 150.0,
              // ),
              Container(
                // alignment: Alignment.centerLeft,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: 50.0,
                        width: 400.0,
                        child: RaisedButton(
                          onPressed: () {
                             Navigator.pushNamed(context, '/login');
                          },
                          child: Text(
                            'INGRESAR',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontFamily: 'QuicksandBold',
                                fontWeight: FontWeight.w900),
                          ),
                          color: Colors.green,
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: 50.0,
                        width: 350.0,
                        child: RaisedButton(
                          onPressed: () {
                             Navigator.pushNamed(context, '/signup');
                          },
                          child: Text(
                            'REGISTRAR',
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 12, 20, 61),
                                fontFamily: 'QuicksandBold',
                                fontWeight: FontWeight.w900),
                          ),
                          color: Colors.white,
                        ),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                         Navigator.pushNamed(context, '/home');
                      },
                      child: Text(
                        'OMITIR',
                        style: TextStyle(
                            color: Colors.pink,
                            fontSize: 15,
                            fontFamily: 'QuicksandBold'),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
  }
}
