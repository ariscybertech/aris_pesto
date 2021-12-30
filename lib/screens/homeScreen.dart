import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
        body: Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Ingredients",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontFamily: 'RobotoMedium',
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Pick atleast two ingredients to get recepies",
                    style: TextStyle(fontFamily: 'RobotoLight', fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "All",
                          style: TextStyle(
                              fontFamily: 'RobotoMedium',
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.green, spreadRadius: 1),
                      ],
                    ),
                    height: 40,
                    width: 60,
                  ),
                  Container(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Veg",
                          style: TextStyle(
                              fontFamily: 'RobotoMedium',
                              fontSize: 15,
                              color: Colors.grey),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.grey, spreadRadius: 1),
                      ],
                    ),
                    height: 40,
                    width: 60,
                  ),
                  Container(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Non-Veg",
                          style: TextStyle(
                              fontFamily: 'RobotoMedium',
                              fontSize: 15,
                              color: Colors.grey),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.grey, spreadRadius: 1),
                      ],
                    ),
                    height: 40,
                    width: 100,
                  ),
                  Container(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.filter_list,
                              color: Colors.grey,
                            ),
                            Expanded(
                              child: Text(
                                "Filters",
                                style: TextStyle(
                                    fontFamily: 'RobotoMedium',
                                    fontSize: 15,
                                    color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.grey, spreadRadius: 1),
                      ],
                    ),
                    height: 40,
                    width: 90,
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 4,
            child: GridView.count(
                crossAxisCount: 3,
                childAspectRatio: 1.3,
                padding: const EdgeInsets.all(10.0),
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 4.0,
                children: <String>[
                  'http://www.for-example.org/img/main/forexamplelogo.png',
                  'http://www.for-example.org/img/main/forexamplelogo.png',
                  'http://www.for-example.org/img/main/forexamplelogo.png',
                  'http://www.for-example.org/img/main/forexamplelogo.png',
                  'http://www.for-example.org/img/main/forexamplelogo.png',
                  'http://www.for-example.org/img/main/forexamplelogo.png',
                  'http://www.for-example.org/img/main/forexamplelogo.png',
                  'http://www.for-example.org/img/main/forexamplelogo.png',
                  'http://www.for-example.org/img/main/forexamplelogo.png',
                  'http://www.for-example.org/img/main/forexamplelogo.png',
                  'http://www.for-example.org/img/main/forexamplelogo.png',
                  'http://www.for-example.org/img/main/forexamplelogo.png',
                ].map((String url) {
                  return GridTile(
                      child: CircleAvatar(
                        radius: 60,
                    foregroundColor: Colors.grey,
                    child: CircleAvatar(
                      radius: 55,
                      backgroundColor: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.network(
                            "https://www.jing.fm/clipimg/full/246-2468305_funny-avocado-sticker-avocado-clipart.png"),
                      ),
                    ),
                  ));
                }).toList()),
          ),
          Flexible(
            flex: 1,
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipPath(

                  clipper: ArcClipper(),
                  child: Center(
                    child: Expanded(
                      child: Container(
                          width: 50,
                          height: 50,
                          color: Colors.green,

                      ),
                    ),
                  ),
                ),
              ],
            )
          ),
        ],
      ),
    ));

  }
}
class ArcClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 30);

    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstPoint = Offset(size.width , size.height);

    var secondControlPoint = Offset(size.width - (size.width / 4), size.height);
    var secondPoint = Offset(size.width, size.height - 30);

//    path.quadraticBezierTo(secondControlPoint.dy, secondControlPoint.dx,
//        secondPoint.dy, secondPoint.dx);

    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
