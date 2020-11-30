import 'package:flutter/material.dart';

class CreateColor extends StatefulWidget {
  @override
  _CreateColorState createState() => _CreateColorState();
}

class _CreateColorState extends State<CreateColor> {
  double cr = 255;
  double cg = 255;
  double cb = 255;

  Color currentColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(
            cr.round().toInt(), cg.round().toInt(), cb.round().toInt(), 1),
        body: Container(
          margin: EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '#${Color.fromRGBO(cr.round().toInt(), cg.round().toInt(), cb.round().toInt(), 1).value.toRadixString(16).toUpperCase()}',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: cg < 150 ? Colors.white : Colors.black),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "R: " + cr.round().toString(),
                    style: TextStyle(
                        color: cg < 150 ? Colors.white : Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "G: " + cg.round().toString(),
                    style: TextStyle(
                        color: cg < 150 ? Colors.white : Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "B: " + cb.round().toString(),
                    style: TextStyle(
                        color: cg < 150 ? Colors.white : Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Slider(
                value: cr,
                min: 0,
                max: 255,
                label: cr.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    cr = value;
                  });
                },
              ),
              Slider(
                value: cg,
                min: 0,
                max: 255,
                label: cg.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    cg = value;
                  });
                },
              ),
              Slider(
                value: cb,
                min: 0,
                max: 255,
                label: cb.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    cb = value;
                  });
                },
              ),
            ],
          ),
        ));
  }
}
