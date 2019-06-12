import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
          child: DrawerContent(),
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: ExactAssetImage("assets/bg_map.jpg"),
            fit: BoxFit.cover,
          )),
          child: SafeArea(
            child: Container(
              margin: EdgeInsets.only(top: 18, bottom: 24, left: 12, right: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Avatar(
                        width: 48,
                        height: 48,
                      ),
                      ScheduleTable(),
                    ],
                  ),
                  HomeController()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Avatar extends StatelessWidget {
  final double width;
  final double height;

  Avatar({this.width = 48, this.height = 48});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: FlatButton(
        shape: CircleBorder(),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
        padding: EdgeInsets.only(),
        child: Container(
          width: width,
          height: height,
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new NetworkImage(
                  "https://i.pinimg.com/originals/ea/7c/ea/ea7cea9efb8387ce989d59f156c80fbb.jpg"),
              fit: BoxFit.cover,
            ),
            borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
            border: new Border.all(
              color: Colors.white,
              width: 4.0,
            ),
          ),
        ),
      ),
    );
  }
}

class ScheduleTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
          elevation: 12,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8))),
          child: Padding(
            padding: EdgeInsets.only(left: 24, right: 24, top: 18, bottom: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "You have a schedule ride at",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF4a4a4a),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text(
                    "25/03/2019 06:40 AM",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF4a4a4a),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

class HomeController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Container(
          width: 42,
          height: 42,
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.white,
            elevation: 8,
            child: Image.asset(
              "assets/ic_location.png",
              width: 24,
              height: 24,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 24),
          child: Card(
            elevation: 8,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 18, top: 18, right: 18),
                  child: Container(
                    height: 120,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset(
                              "assets/ic_here.png",
                              width: 28,
                              height: 28,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8, bottom: 8),
                              child: Image.asset(
                                "assets/ic_line.png",
                                width: 2,
                              ),
                            ),
                            Image.asset(
                              "assets/ic_fill.png",
                              width: 28,
                              height: 28,
                            ),
                          ],
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  Expanded(
                                    child: FlatButton(
                                      padding: EdgeInsets.all(0),
                                      onPressed: () {},
                                      child: SizedBox(
                                        width: double.infinity,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 12),
                                          child: Text(
                                            "6 Thanh Lan Street",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Color(0xFF4a4a4a)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Divider(
                                    height: 3,
                                    color: Colors.black12,
                                  ),
                                  Expanded(
                                    child: FlatButton(
                                        onPressed: () {},
                                        child: SizedBox(
                                          width: double.infinity,
                                          child: Text(
                                            "I\'m going to...",
                                            style: TextStyle(
                                                color: Color(0xFF9b9b9b),
                                                fontSize: 22),
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                RecentlyAddresses()
              ],
            ),
          ),
        )
      ],
    );
  }
}

class RecentlyAddresses extends StatelessWidget {
  List<String> addresses = [
    "AC Building",
    "6 Thanh Lan",
    "Time City",
    "332 Hoang Cong Chat",
    "AC Building",
    "6 Thanh Lan",
    "Time City",
    "332 Hoang Cong Chat",
    "AC Building",
    "6 Thanh Lan",
    "Time City",
    "332 Hoang Cong Chat",
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8, top: 4),
      child: Container(
          height: 84,
          child: ListView.builder(
            padding: EdgeInsets.only(left: 10),
            scrollDirection: Axis.horizontal,
            itemCount: addresses.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(
                    left: 8, right: 8, top: 16, bottom: 24),
                child: MaterialButton(
                  onPressed: () {},
                  elevation: 4,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(22))),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 8, right: 8, top: 12, bottom: 12),
                    child: Text(addresses[index]),
                  ),
                ),
              );
            },
          )),
    );
  }
}

class DrawerContent extends StatelessWidget {
  static const padding = 18.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          MaterialButton(
            elevation: 12,
            color: Color(0xFF4a4a4a),
            onPressed: () {},
            padding: EdgeInsets.all(0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(color: Color(0xFF4a4a4a)),
              child: SafeArea(
                  child: Padding(
                padding: const EdgeInsets.only(
                    left: padding, top: padding, bottom: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Avatar(
                      width: 64,
                      height: 64,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: Text(
                        "Nguyễn Văn A",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 4),
                            child: Text(
                              "(4.3)",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        "Vehicles",
                        style: TextStyle(
                          color: Color(0xFF9b9b9b),
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        "Vios",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        "29H1 - 723.71",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        "White",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ],
                ),
              )),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(0),
              shrinkWrap: true,
              children: <Widget>[
                FlatButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(top: 18, bottom: 18),
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        "Sale Report",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 22),
                      ),
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(top: 18, bottom: 18),
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        "Scheduled Pickup",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 22),
                      ),
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(top: 18, bottom: 18),
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        "Setting",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 22),
                      ),
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(top: 18, bottom: 18),
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        "Notifications",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 22),
                      ),
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(top: 18, bottom: 18),
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        "Safety policy",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 22),
                      ),
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(top: 18, bottom: 18),
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        "Term of service",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 22),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 12, right: 24),
            child: Text(
              "Version 0.0.6",
              style: TextStyle(
                  color: Color(0xFF9b9b9b),
                  fontSize: 10,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
