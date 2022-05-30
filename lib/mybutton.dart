import 'package:flutter/material.dart';


class MyButton extends StatelessWidget {
final  Icon? icon;
 const MyButton({Key? key,  this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        padding: const EdgeInsets.all(20),
         child: icon,
        decoration: BoxDecoration(
            color: Colors.grey[800],
             shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade500,
                  offset: const Offset(3.0, 3.0),
                  blurRadius: 5.0,
                  spreadRadius: 1.0),
              const BoxShadow(
                  color: Colors.white,
                  offset: Offset(-2.0, -2.0),
                  blurRadius: 2.0,
                  spreadRadius: 1.0),
            ],
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.grey[200]!,
                  Colors.grey[300]!,
                  Colors.grey[400]!,
                  Colors.grey[500]!
                ],
                stops: const [
                  0.1,
                  0.3,
                  0.8,
                  1
                ])),
       
      ),
    );
  }
}

  // Container(
  //             width: 200,
  //             height: 200,
  //             child: const Icon(Icons.android,
  //                 size: 80, color: Colors.black),
  //             decoration: BoxDecoration(
  //                 color:  Colors.grey[300],
  //                 borderRadius: const BorderRadius.all(Radius.circular(30)),
  //                 boxShadow: [
  //                   BoxShadow(
  //                       color: 
  //                            Colors.grey.shade500,
  //                       offset: const Offset(4.0, 4.0),
  //                       blurRadius: 3.0,
  //                       spreadRadius: 1.0),
  //                   BoxShadow(
  //                       color: darkMode ? Colors.grey.shade800 : Colors.white,
  //                       offset: const Offset(-2.0, -2.0),
  //                       blurRadius: 3.0,
  //                       spreadRadius: 1.0),
  //                 ]),
  //           ),
