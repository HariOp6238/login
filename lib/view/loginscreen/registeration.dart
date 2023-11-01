import 'package:flutter/material.dart';
import 'package:login/constant/mybutton.dart';
import 'package:login/constant/squarelogo.dart';
import 'package:login/constant/textfield.dart';
import 'package:login/view/loginscreen/login.dart';

class Register extends StatelessWidget {
  Register({super.key});

  //text editing controller
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final passwordcheckcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),

                // lock icon

                const Icon(
                  Icons.person_add,
                  color: Colors.black,
                  size: 100,
                ),
                const SizedBox(
                  height: 50,
                ),

                // missing text

                Text(
                  "Hei welcome Lets get started",
                  style: TextStyle(color: Colors.grey[700], fontSize: 16),
                ),
                const SizedBox(
                  height: 25,
                ),

                // username field

                Textfield(
                  controller: emailcontroller,
                  hinttext: "Enter your username",
                  obscuretext: false,
                ),
                const SizedBox(
                  height: 15,
                ),

                // password field

                Textfield(
                    controller: passwordcontroller,
                    hinttext: 'enter password',
                    obscuretext: true),
                const SizedBox(
                  height: 15,
                ),
                Textfield(
                    controller: passwordcheckcontroller,
                    hinttext: ' Re-enter password',
                    obscuretext: true),
                const SizedBox(
                  height: 20,
                ),
                Mybutton(onTap: () => Login(), label: 'Register'),
                const SizedBox(
                  height: 25,
                ),

                //divider

                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 3,
                        color: Colors.grey[400],
                      ),
                    ),
                    Text(
                      "Or continue with",
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 3,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),

                const Squarelogo(),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account..",
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Login(),
                            ));
                      },
                      child: const Text(
                        "Login ",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
