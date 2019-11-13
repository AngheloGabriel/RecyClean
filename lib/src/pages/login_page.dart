import 'package:flutter/material.dart';
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
            child: ListView(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Positioned(
                      child: Image(
                        image: AssetImage('images/img02.png'),
                      ),
                    ),
                    Center(
                        child: Text(
                      'Ingresar',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                      ),
                    )),
                  ],
                ),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(labelText: 'Email'),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter your email';
                    }
                  },
                ),
                TextFormField(
                  controller: passwordController,
                  decoration: InputDecoration(labelText: 'Password'),
                  obscureText: true,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter your password';
                    }
                  },
                ),
                RaisedButton(
                  child: Text('INGRESAR'),
                  onPressed: _authenticateUser,
                ),
                RaisedButton(
                  child: Text('REGISTRARSE'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/signup');
                  },
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
