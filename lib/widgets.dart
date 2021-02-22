import 'package:age_calculator/calculator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {

  var myController = TextEditingController();
  var temp = 0 ;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(96, 96, 96, 10),
          title: Text(
            'Age Calculator',
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 100,
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 3,
                        color: Color.fromRGBO(96, 96, 96, 1),
                      ),
                      borderRadius: BorderRadius.circular(60.0),
                    ),
                    fillColor: Color.fromRGBO(96, 96, 96, 0.3),
                    filled: true,
                    labelText: 'Enter Your Birth Year : ',
                    hintText: 'Your Birth Year Is',
                    labelStyle: TextStyle(
                      fontSize: 25,
                      color: Color.fromRGBO(96, 96, 96, 10),
                    ),
                    hintStyle:
                        TextStyle(fontSize: 25, fontStyle: FontStyle.italic),
                  ),
                  controller: myController,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              RaisedButton(
                onPressed: () => setState((){
                  AgeCalculator().cacl(int.parse(myController.text));
                  temp = AgeCalculator.age ;
                }),
                child: Text(
                  'Get My Age',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black87
                  ),
                ),
                color: Color.fromRGBO(96, 96, 96,10),
                padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                splashColor: Colors.black45,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                child: Text('Your Age Is '
                    '$temp '
                    'Years Old' ,
                style: TextStyle(
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold
                ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
