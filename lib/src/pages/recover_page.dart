import 'package:flutter/material.dart';
import 'package:recyclean/src/animation/fade_animation.dart';

class RecoverPage extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
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
                        right: 180,
                        top: 150,
                        width: 210,
                        height: 150,
                        
                        child: FadeAnimation(
                            1.6,
                            Container(
                              margin: EdgeInsets.only(top: 50),
                              child: Center(
                                child: Text(
                                  "Recuperar",
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
                              ],
                            ),
                          )),
                      FadeAnimation(
                          2,
                          MaterialButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/login');
                            },
                            child: Text(
                              "¡Ya tengo una cuenta!",
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
                              onPressed: (){},
                              child: Text(
                                'RESTAURAR',
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
                      // FadeAnimation(
                      //   2.2,
                      //   MaterialButton(
                      //     onPressed: () {
                      //       Navigator.pushNamed(context, '/signup');
                      //     },
                      //     child: Text(
                      //       'Crear Cuenta',
                      //       style: TextStyle(
                      //           color: Color.fromRGBO(143, 148, 251, 1),
                      //           fontSize: 15,
                      //           fontFamily: 'QuicksandBold'),
                      //     ),
                      //   ),
                      // ),
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
}