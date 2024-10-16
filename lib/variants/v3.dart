import 'package:flutter/material.dart';

class V3 extends StatefulWidget {
  @override
  State<V3> createState() => _V3State();
}

class _V3State extends State<V3> {
  double _red = 10;
  double _blue = 50;
  double _green = 19;

  _onChangeRed(double value) {
    setState(() {
      _red = value;
    });
  }

  _onChangeBlue(double value) {
    setState(() {
      _blue = value;
    });
  }

  _onChangeGreen(double value) {
    setState(() {
      _green = value;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        const SizedBox(height: 60),
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Color.fromRGBO(_red.toInt(), _green.toInt(), _blue.toInt(), 1),
          ),
        ),
        const SizedBox(height: 40),
        Row(
          children: [
            const Text("Red: "),
            Text(_red.toStringAsFixed(2), style: const TextStyle(fontWeight: FontWeight.bold),),
          ],
        ),
        Slider(value: _red, min: 0, max: 255, onChanged: _onChangeRed),
        Row(
          children: [
            const Text("Blue: "),
            Text(_blue.toStringAsFixed(2), style: const TextStyle(fontWeight: FontWeight.bold),),
          ],
        ),
        Slider(value: _blue, min: 0, max: 255, onChanged: _onChangeBlue),
        Row(
          children: [
            const Text("Green: "),
            Text(_green.toStringAsFixed(2), style: const TextStyle(fontWeight: FontWeight.bold),),
          ],
        ),
        Slider(value: _green, min: 0, max: 255, onChanged: _onChangeGreen),


      ],
    );
  }
}