import 'package:flutter/material.dart';

class Attraction extends StatefulWidget {
  const Attraction({Key? key}) : super(key: key);

  @override
  State<Attraction> createState() => _AttractionState();
}

class _AttractionState extends State<Attraction> {
  //Variables
  int likecounter = 40;

  bool Like = false;

  TextStyle headingStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  //Override Methods
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('images/Everest2006.jpg'),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Column(
                          children: [
                            Text(
                              'Oeschinen Lake Campgound',
                              style: headingStyle,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text('Kandersteg, Switzerland',
                                style: TextStyle(
                                  fontSize: 15,
                                )),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  if (Like){
                                    Like = false;
                                    likecounter--;
                                  } else {
                                    Like = true;
                                    likecounter++;
                                  }
                                });
                              },
                              icon: Like
                                  ? Icon(Icons.star)
                                  : Icon(
                                      Icons.star_outline_outlined,
                                      
                                    ),
                                  color: Colors.red,
                            ),
                            Text('$likecounter')
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(Icons.call, color: Colors.blue, size: 20),
                    Text('CALL',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.near_me, color: Colors.blue, size: 20),
                    Text('ROUTE',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.share, color: Colors.blue, size: 20),
                    Text('SHARE',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Text(
                'Oeschinen Lake lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.',
                style: TextStyle(
                  fontSize: 15,
                )),
          )
        ],
      ),
    );
  }
}
