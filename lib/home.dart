import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:neumorphism/button_tapped.dart';
import 'package:neumorphism/mybutton.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Icon icons1 = const Icon(
    FontAwesomeIcons.search,
    size: 22,
    color: Colors.indigo,
  );
  Icon icons2 = const Icon(
    FontAwesomeIcons.book,
    size: 22,
    color: Colors.indigo,
  );
  Icon icons3 = const Icon(
    Icons.favorite,
    size: 22,
    color: Colors.red,
  );
  Icon icons4 = const Icon(
    FontAwesomeIcons.calendar,
    size: 22,
    color: Colors.indigo,
  );
  Icon icons5 = const Icon(
    Icons.star,
    size: 22,
    color: Colors.indigo,
  );
  bool _buttonTapped_1 = false;
  bool _buttonTapped_2 = false;
  bool _buttonTapped_3 = false;
  bool _buttonTapped_4 = false;
  bool _buttonTapped_5 = false;
  _onTapped_1() {
    setState(() {
      _buttonTapped_1 = true;
      _buttonTapped_2 = false;
      _buttonTapped_3 = false;
      _buttonTapped_4 = false;
      _buttonTapped_5 = false;
    });
  }

  _onTapped_2() {
    setState(() {
      _buttonTapped_1 = false;
      _buttonTapped_2 = true;
      _buttonTapped_3 = false;
      _buttonTapped_4 = false;
      _buttonTapped_5 = false;
    });
  }

  _onTapped_3() {
    setState(() {
      _buttonTapped_1 = false;
      _buttonTapped_2 = false;
      _buttonTapped_3 = true;
      _buttonTapped_4 = false;
      _buttonTapped_5 = false;
    });
  }

  _onTapped_4() {
    setState(() {
      _buttonTapped_1 = false;
      _buttonTapped_2 = false;
      _buttonTapped_3 = false;
      _buttonTapped_4 = true;
      _buttonTapped_5 = false;
    });
  }

  _onTapped_5() {
    setState(() {
      _buttonTapped_1 = false;
      _buttonTapped_2 = false;
      _buttonTapped_3 = false;
      _buttonTapped_4 = false;
      _buttonTapped_5 = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(alignment: Alignment.center, children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: const BorderRadius.all(Radius.circular(100)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade500,
                        offset: const Offset(4.0, 4.0),
                        blurRadius: 3.0,
                        spreadRadius: 1.0),
                    const BoxShadow(
                        color: Colors.white,
                        offset: Offset(-2.0, -2.0),
                        blurRadius: 3.0,
                        spreadRadius: 1.0),
                  ]),
            ),
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(100)),
              child: Image.asset(
                'assets/avrod.png',
                height: 190,
                width: 190,
                fit: BoxFit.cover,
              ),
            ),
          ]),
          const SizedBox(
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: GestureDetector(
                        onTap: _onTapped_1,
                        child: _buttonTapped_1
                            ? ButtonTapped(
                                icon: Icon(
                                  FontAwesomeIcons.search,
                                  size: 22,
                                  color: Colors.indigo[300],
                                ),
                              )
                            : MyButton(icon: icons1))),
                Expanded(
                    child: GestureDetector(
                        onTap: _onTapped_2,
                        child: _buttonTapped_2
                            ? ButtonTapped(
                                icon: Icon(
                                  FontAwesomeIcons.book,
                                  size: 22,
                                  color: Colors.indigo[300],
                                ),
                              )
                            : MyButton(
                                icon: icons2,
                              ))),
                Expanded(
                    child: GestureDetector(
                        onTap: _onTapped_3,
                        child: _buttonTapped_3
                            ? ButtonTapped(
                                icon: Icon(Icons.favorite,
                                    size: 22, color: Colors.red[300]),
                              )
                            : MyButton(
                                icon: icons3,
                              ))),
                Expanded(
                    child: GestureDetector(
                        onTap: _onTapped_4,
                        child: _buttonTapped_4
                            ? ButtonTapped(
                                icon: Icon(FontAwesomeIcons.calendar,
                                    size: 22, color: Colors.indigo[300]),
                              )
                            : MyButton(
                                icon: icons4,
                              ))),
                Expanded(
                    child: GestureDetector(
                        onTap: _onTapped_5,
                        child: _buttonTapped_5
                            ? ButtonTapped(
                                icon: Icon(Icons.star,
                                    size: 22, color: Colors.indigo[300]),
                              )
                            : MyButton(
                                icon: icons5,
                              ))),
              ],
            ),
          )
        ],
      ),
    );
  }
}
