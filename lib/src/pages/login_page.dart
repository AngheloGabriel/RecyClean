import 'package:flutter/material.dart';
import 'package:recyclean/src/animation/fade_animation.dart';
import 'package:recyclean/src/model/user_model.dart';
import 'package:recyclean/src/data/database_helper.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Container(
            child: ListView(
              children: <Widget>[
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/background.png'),
                          fit: BoxFit.fill)),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 30,
                        width: 80,
                        height: 200,
                        child: FadeAnimation(
                            1,
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('images/light-1.png'))),
                            )),
                      ),
                      Positioned(
                        left: 140,
                        width: 80,
                        height: 150,
                        child: FadeAnimation(
                            1.3,
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('images/light-2.png'))),
                            )),
                      ),
                      Positioned(
                        right: 40,
                        top: 40,
                        width: 80,
                        height: 150,
                        child: FadeAnimation(
                            1.5,
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('images/recycle.png'))),
                            )),
                      ),
                      Positioned(
                        // right: 250,
                        // top: 220,
                        // width: 130,
                        // height: 100,
                        child: FadeAnimation(
                            1.6,
                            Container(
                              margin: EdgeInsets.only(top: 50),
                              child: Center(
                                child: Text(
                                  "Login  ",
                                
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    // fontWeight: FontWeight.bold,
                                    fontFamily: 'QuickSandBold',
                                  ),
                                ),
                              ),
                            )),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      FadeAnimation(
                          1.8,
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromRGBO(143, 148, 251, .2),
                                      blurRadius: 20.0,
                                      offset: Offset(0, 15))
                                ]),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.grey[100]))),
                                  child: TextFormField(
                                    controller: emailController,
                                    decoration: InputDecoration(
                                        prefixIcon: Icon(
                                          Icons.mail_outline,
                                          color: Colors.grey[400],
                                        ),
                                        border: InputBorder.none,
                                        hintText: "Correo Electrónico",
                                        hintStyle:
                                            TextStyle(color: Colors.grey[400])),
                                    keyboardType: TextInputType.emailAddress,
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return 'Porfavor Ingrese su Correo Electrónico';
                                      }
                                    },
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    controller: passwordController,
                                    decoration: InputDecoration(
                                        prefixIcon: Icon(
                                          Icons.lock,
                                          color: Colors.grey[400],
                                        ),
                                        border: InputBorder.none,
                                        hintText: "Ingrese su contraseña",
                                        hintStyle:
                                            TextStyle(color: Colors.grey[400])),
                                    obscureText: true,
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return 'Porfavor Ingrese su Contraseña';
                                      }
                                    },
                                  ),
                                )
                              ],
                            ),
                          )),
                      FadeAnimation(
                          2,
                          MaterialButton(
                            onPressed: () {
                               Navigator.pushNamed(context, '/recover');
                            },
                            child: Text(
                              "Olvidaste tu contraseña?",
                              style: TextStyle(
                                fontFamily: 'QuicksandBold',
                                color: Color.fromRGBO(143, 148, 251, 1)),
                            ),
                          )),
                      FadeAnimation(
                        2,
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            
                            height: 50.0,
                            width: 400.0,
                            child: RaisedButton(
                              onPressed: _authenticateUser,
                              child: Text(
                                'INGRESAR',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontFamily: 'QuicksandBold',
                                    fontWeight: FontWeight.w900),
                              ),
                              color: Color.fromRGBO(143, 148, 251, 1),
                            ),
                          ),
                        ),
                      ),
                      FadeAnimation(
                        2.2,
                        MaterialButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/signup');
                          },
                          child: Text(
                            'Crear Cuenta',
                            style: TextStyle(
                                color: Color.fromRGBO(143, 148, 251, 1),
                                fontSize: 15,
                                fontFamily: 'QuicksandBold'),
                          ),
                        ),
                      ),
                      FadeAnimation(
                        2.2,
                        MaterialButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/home');
                          },
                          child: Text(
                            'OMITIR',
                            style: TextStyle(
                                color: Colors.pinkAccent,
                                fontSize: 15,
                                fontFamily: 'QuicksandBold'),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _authenticateUser() async {
    if (_formKey.currentState.validate()) {
      DBHelper dbHelper = DBHelper();
      dbHelper
          .getUser(emailController.text, passwordController.text)
          .then((List<User> users) {
        if (users != null && users.length > 0) {
          Navigator.pushNamed(context, '/home');
          print('[LoginPage] _authenticateUser: Success');
        } else {
          print('[LoginPage] _authenticateUser: Invalid credentials');
        }
      });
    }
  }
}
