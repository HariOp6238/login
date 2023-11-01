import 'package:flutter/material.dart';
import 'package:login/constant/squarelogo.dart';
import 'package:login/constant/textfield.dart';
import 'package:login/view/screens/registeration.dart';

class Login extends StatelessWidget {
  Login({super.key});

  //text editing controller
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

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
                  Icons.lock,
                  color: Colors.black,
                  size: 100,
                ),
                const SizedBox(
                  height: 50,
                ),

                // missing text

                Text(
                  "Hei welcome back You Have Been Missed",
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

                // forgott password

                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Text(
                        "Forgot Password ?",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,

                  //signin button
                ),
                // mybutton(
                //   onTap: ,
                // ),
                const SizedBox(
                  height: 20,
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
                      "Not a member ?",
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Register(),
                            ));
                      },
                      child: const Text(
                        "Register now ",
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
