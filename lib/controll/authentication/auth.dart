import 'package:flutter/material.dart';
import 'package:login/view/loginscreen/login.dart';

class Auth {
  Login obj = Login();

  void checklogin(BuildContext ctx) {
    final username = obj.usernamecontroller;
    final password = obj.passwordcontroller;

    if (username == password) {
      //go to home
    } else {
// snackbar
      ScaffoldMessenger.of(ctx).showSnackBar(const SnackBar(
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.red,
          duration: Duration(seconds: 5),
          margin: EdgeInsets.all(10),
          content: Text("username and password does not match")));
    }
  }
}
