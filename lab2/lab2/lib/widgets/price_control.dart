import 'package:flutter/material.dart';

class PriceControl extends StatefulWidget {
  const PriceControl({super.key});

  @override
  State<PriceControl> createState() => _PriceControlState();
}

class _PriceControlState extends State<PriceControl> {
  double _price = 60;

  @override
  Widget build(BuildContext context) {
  return Column(
    children: [
      Slider(
        value: _price,
        divisions: 40,
        max: 200,
        onChanged: (double value) {
          setState(() {
            _price = value;
          });
        },
      ),
      Text('${_price.round()} kr'),
     ],
 );
}
}