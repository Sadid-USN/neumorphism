import 'package:flutter/material.dart';


class ButtonTapped extends StatelessWidget {
 final  Icon? icon;
 const ButtonTapped({Key? key, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: Container(
        padding: const EdgeInsets.all(20),
        child: icon,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey[300],
            boxShadow: [
              const BoxShadow(
                  color: Colors.white,
                  offset: Offset(3.0, 3.0),
                  blurRadius: 5.0,
                  spreadRadius: 1.0),
              BoxShadow(
                  color: Colors.grey[600]!,
                  offset: const Offset(-2.0, -2.0),
                  blurRadius: 2.0,
                  spreadRadius: 1.0),
            ],
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.grey[700]!,
                  Colors.grey[600]!,
                  Colors.grey[500]!,
                  Colors.grey[200]!
                ],
                stops: const [
                  0,
                  0.1,
                  0.3,
                  1
                ])),
      ),
    );
  }
}
