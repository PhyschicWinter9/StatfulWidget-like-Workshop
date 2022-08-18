import 'package:flutter/material.dart';
// import 'package:statefulwidget_workshop/counter.dart';

class AttractionScroll extends StatefulWidget {
  const AttractionScroll({Key? key}) : super(key: key);

  @override
  State<AttractionScroll> createState() => _AttractionScrollState();
}

class _AttractionScrollState extends State<AttractionScroll> {
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
      body: SingleChildScrollView(
        child: Column(
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
      
                                    // if else function Method
                                    // if (Like){
                                    //   Like = false;
                                    //   likecounter--;
                                    // } else {
                                    //   Like = true;
                                    //   likecounter++;
                                    // }
                                    
                                    //Ternary Operator Method
                                    // Like = !Like;
                                    // likecounter += Like ? 1 : -1;
      
      
                                    // if else and ternary operator Method
                                    Like = !Like;
                                    if (Like) {
                                      likecounter++;
                                    } else {
                                      likecounter--;
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
                  'Oeschinen Lake lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run. lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                  style: TextStyle(
                    fontSize: 15,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
