import 'package:first_app/resource/Color.dart';
import 'package:flutter/material.dart';

class PreTrip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
          child: Container(
            decoration: BoxDecoration(color: Colors.white),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: ExactAssetImage("assets/bg_map.jpg"),
                  fit: BoxFit.cover)),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.only(left: 16.0, right: 16.0, top: 48.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      BackButton(),
                      Expanded(
                        child: Container(
                            height: 120,
                            margin: EdgeInsets.only(left: 32.0),
                            child: AddressDetail()),
                      )
                    ],
                  ),
                ),
                TripDetail()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 52.0,
      height: 52.0,
      child: FloatingActionButton(
        onPressed: () {},
        elevation: 4,
        backgroundColor: Colors.white,
        child: Image.asset(
          'assets/ic_back.png',
          width: 18.0,
          height: 18.0,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}

class AddressDetail extends StatefulWidget {
  @override
  _AddressDetailState createState() => _AddressDetailState();
}

class _AddressDetailState extends State<AddressDetail> {
  var _origin = "AC Building, 78 Duy Tan Street, Hanoi";
  var _destination = "6 Thanh Lan, Hanoi";

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset(
                  'assets/ic_here.png',
                  width: 20,
                  height: 20,
                  fit: BoxFit.scaleDown,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Image.asset(
                    'assets/ic_line.png',
                    width: 2,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Image.asset(
                  'assets/ic_fill.png',
                  width: 20,
                  height: 20,
                  fit: BoxFit.scaleDown,
                ),
              ],
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 8.0),
                child: AnimatedContainer(
                  duration: Duration(seconds: 2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: Center(
                          widthFactor: 1,
                          child: Text(
                            _origin,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color(0xFF4a4a4a),
                                fontWeight: FontWeight.bold,
                                fontSize: 12.0),
                          ),
                        ),
                      ),
                      Divider(
                        height: 3.0,
                        color: Color(0x80000000),
                      ),
                      Expanded(
                        child: Center(
                          widthFactor: 1,
                          child: Text(
                            _destination,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color(0xFF4a4a4a),
                                fontWeight: FontWeight.bold,
                                fontSize: 12.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 48.0,
              height: 48.0,
              child: FlatButton(
                padding: EdgeInsets.all(8.0),
                onPressed: _onSwapClick,
                child: Image.asset(
                  'assets/ic_swap.png',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  _onSwapClick() {
    setState(() {
      var temp = _origin;
      _origin = _destination;
      _destination = temp;
    });
  }
}

class TripDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(right: 16),
          width: 42,
          height: 42,
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.white,
            elevation: 4,
            child: Image.asset(
              "assets/ic_location.png",
              width: 22,
              height: 22,
            ),
          ),
        ),
        Container(
            margin: EdgeInsets.only(top: 16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12)),
                color: Color(0xFFe6e6e6)),
            child: FlatButton(
              onPressed: () {},
              padding: EdgeInsets.all(0),
              child: Padding(
                padding:
                    EdgeInsets.only(left: 24, right: 24, top: 12, bottom: 12),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      "assets/ic_taxi.png",
                      width: 20,
                      height: 20,
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 16, right: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "JustGo",
                              style: TextStyle(
                                fontSize: 17,
                                color: Color(0xFF4a4a4a),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4),
                              child: Text(
                                "Find the nearest Taxis and Cars",
                                style: TextStyle(
                                    fontSize: 10, color: Color(0xFF9b9b9b)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Image.asset(
                      "assets/ic_arrow_up.png",
                      width: 24,
                      height: 24,
                    ),
                  ],
                ),
              ),
            )),
        Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: FlatButton(
                        onPressed: () {},
                        padding: EdgeInsets.only(top: 18, bottom: 18),
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              "assets/ic_calendar.png",
                              width: 20,
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Now",
                                      style: TextStyle(
                                          fontSize: 11,
                                          color: AppColor.greyish_brown,
                                          fontWeight: FontWeight.bold)),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 2.0),
                                    child: RotatedBox(
                                      quarterTurns: 2,
                                      child: Image.asset(
                                        "assets/ic_back.png",
                                        width: 8,
                                        height: 8,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: FlatButton(
                        onPressed: () {},
                        padding: EdgeInsets.only(top: 18, bottom: 18),
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              "assets/ic_coupon.png",
                              width: 20,
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Add coupon",
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: AppColor.warm_grey_two),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: FlatButton(
                        onPressed: () {},
                        padding: EdgeInsets.only(top: 18, bottom: 18),
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              "assets/ic_edit.png",
                              width: 20,
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Note",
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: AppColor.greyish_brown),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 3,
                  color: Colors.black12,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16, bottom: 24),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Text(
                              "ESTIMATE TIME",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 11,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: Text(
                                "4 mins / 10 km",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Image.asset(
                                  "assets/ic_atm.png",
                                  width: 20,
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: Text(
                                    "ESTIMATE TIME",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: RotatedBox(
                                    quarterTurns: 2,
                                    child: Image.asset(
                                      "assets/ic_back.png",
                                      width: 12,
                                      height: 12,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Text(
                                    "Fare",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 11,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 12),
                                    child: Text(
                                      "VND 26K - 29K",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: MaterialButton(
                        color: Color(0xFF057b2d),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Text(
                            "FAST\nBOOKING",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 24,
                    ),
                    Expanded(
                      child: MaterialButton(
                        color: Color(0xFF057b2d),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Text(
                            "SPECIFIC\nDRIVER",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 24,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
