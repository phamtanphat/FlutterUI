import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Myui extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyuiState();
  }
}

class MyuiState extends State<Myui> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My app custom'),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            "A",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Colors.blue,
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            "B",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Colors.amber,
                        )),
                    Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          "C",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.teal,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          "D",
                          style: TextStyle(color: Colors.white , ),
                        ),
                        color: Colors.pinkAccent,
                      )
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            "A",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Colors.blue,
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            "B",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Colors.amber,
                        )),
                    Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          "C",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.teal,
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            "D",
                            style: TextStyle(color: Colors.white , ),
                          ),
                          color: Colors.pinkAccent,
                        )
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
