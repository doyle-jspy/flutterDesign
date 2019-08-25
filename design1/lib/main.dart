import 'package:flutter/material.dart';
import 'dart:async';
import 'package:design1/MainPage.dart';

void main() => runApp(
  MaterialApp(
    home: MyApp()
  )
);

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  initState() {

    super.initState();
    print("!23123");
    Future.delayed(
      Duration(seconds: 5),
      () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MainPage()
        ),
      )
    );
  }

  @override
  Widget build(BuildContext context){

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            fit: BoxFit.fitWidth,
            image: NetworkImage(
              "https://cdn.pixabay.com/photo/2019/08/06/08/46/smoke-4387774_1280.png",
              scale: 2.0
            )
          )
        ),
        child: _mainButton(),
      ),
    );
  }

  _mainButton(){
    return Stack(
      children: <Widget>[
        Positioned(
          height: 50,
          bottom: 50,
          right: 50,
          left: 50,
          child:  RaisedButton(
              color: Colors.green[700],
              hoverElevation: 20.0,
              child: Text(
                "Press Me",
                style: TextStyle(
                    inherit: true,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0
                ),
              ),
              textColor: Colors.white,
              splashColor: Colors.green[300],
              onPressed: () => moveMain(context),
              shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
          ),
        )
      ],
    );
  }

  moveMain(BuildContext context){
    return Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => MainPage()
      )
    );
  }

}