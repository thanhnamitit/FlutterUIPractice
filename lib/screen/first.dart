import 'package:flutter/material.dart';

class Root extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Card(
                      child: Image.asset('assets/ice_cream.jpg'),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      child: Image.asset('assets/ice_cream.jpg'),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      child: Image.asset('assets/ice_cream.jpg'),
                    ),
                  )
                ],
              ),
              Text("Yummy ice cream ^^")
            ],
          ),
        ),
      ),
    );
  }
}
