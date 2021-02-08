
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  final _controllerDolars = TextEditingController();
  final _controllerVND = TextEditingController();
  double _priceDollars;
  double _priceVND = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          minimum: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: TextField(
                  controller: _controllerDolars,
                  onChanged: (value) {
                    setState(() {
                      _priceDollars = double.tryParse(value) ?? 0;
                    });
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25))
                    ),
                    labelText: 'Input dolars'
                  ),
                ),
              ),
              Container(
                child: Text(
                  '$_priceVND (VND)'
                ),
              ),
              FlatButton(
                child: Text(
                  'Click me',
                  style: TextStyle(fontSize: 20, color: Colors.red),
                ),
                onPressed: (){
                  setState(() {
                    _priceVND = _priceDollars*23.149*1000;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}