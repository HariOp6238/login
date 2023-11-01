import 'package:flutter/material.dart';

class Squarelogo extends StatelessWidget {
  const Squarelogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const SizedBox(
          width: 100,
        ),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade500),
              image: const DecorationImage(
                  image: AssetImage("assets/images/goo.png"), fit: BoxFit.fill),
              borderRadius: BorderRadius.circular(10)),
        ),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade500),
              image: const DecorationImage(
                  image: AssetImage("assets/images/app.png"), fit: BoxFit.fill),
              borderRadius: BorderRadius.circular(10)),
        ),
        const SizedBox(
          width: 100,
        ),
      ],
    );
  }
}
