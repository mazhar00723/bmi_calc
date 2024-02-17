import 'package:flutter/material.dart';

class Bmicalculator extends StatefulWidget {
  const Bmicalculator({Key? key}) : super(key: key);

  @override
  State<Bmicalculator> createState() => _BmicalculatorState();
}

class _BmicalculatorState extends State<Bmicalculator> {
  TextEditingController height=TextEditingController();
  TextEditingController weight=TextEditingController();
  double result=0;
  double h_value=0;
  double w_value=0;
  void calculator()
  {
    h_value=double.parse(height.text);
    w_value=double.parse(weight.text);
    result=w_value/(h_value*h_value);
    print(result);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
            title: Text("Bmi calculator"), backgroundColor: Colors.cyan),

        body: Column(mainAxisAlignment: MainAxisAlignment.center ,
            children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: height,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Height :',
                  filled: true,
                  fillColor: Colors.white
              )),
            ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  controller: weight,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: ' Enter Weight :',
                      filled: true,
                      fillColor: Colors.white
                    )),
              ),


              TextButton(onPressed: (){calculator();}, child: Text('<<<<<<<<<<Click Here>>>>>>>>>>')),Text('Result')
            ]),
        backgroundColor: Colors.black);
  }
}
