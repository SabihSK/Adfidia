import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static String route = "/Home";
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

Size getScreenSize(BuildContext context) => MediaQuery.of(context).size;

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 25),
              child: Text(
                "ADFIDIA",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(8.9),
              child: Container(
                height: 150,
                width: 330,
                child: Card(
                    color: Colors.red,
                    elevation: 8,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                                child: Text(
                              "Wallet Balance",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                            Row(
                              children: [
                                Container(
                                  child: Text(
                                    "\$0",
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    )),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
