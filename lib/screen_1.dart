import 'package:flutter/material.dart';
//import 'package:pictureapp/widgets/listphoto.dart';

class First extends StatefulWidget {
  @override
  _StateFirst createState() => _StateFirst();
}

class _StateFirst extends State<First> {
  TextEditingController mycontroller = TextEditingController();
  PageController pagecontroller = PageController();

  final List picturelist = [
    'images/plant.jpg',
    'images/pic1.jpg',
    'images/food5.jpg',
    'images/man.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF1A3D3F),
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Color(0xFF1A3D3F),
          leading: IconButton(
              icon: Icon(Icons.crop_3_2, color: Colors.white),
              onPressed: () {}),
          actions: <Widget>[
            Icon(Icons.more_vert, color: Colors.white),
            SizedBox(height: 3.0, width: 5.0)
          ],
        ),
        body: Column(children: [
          Container(
            height: MediaQuery.of(context).size.height / 4,
            padding: EdgeInsets.only(top: 10.0, left: 22.0, right: 22.0),
            
            child: Column(
              children: <Widget>[
                SizedBox(height: 10.0),

                Row(
                  children: <Widget>[
                    Text("Find Awesome ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold))
                  ],
                ),
                SizedBox(height: 6.0),
                Row(
                  children: <Widget>[
                    Text(
                      "Photos",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 30.0,
                ),
                SizedBox(
                    height: 40,
                    width: 270.0,
                    child: TextFormField(
                      controller: mycontroller,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white,
                                width: 0.2,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(30.0)),
                        suffixIcon:
                            Icon(Icons.search, size: 20.0, color: Colors.white),
                        labelText: 'search inspiration...',
                        labelStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                        //filled: true
                        // suffixText: "search inspiration...",
                      ),
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Expanded(
              child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(left: 30.0, top: 40.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40.0),
                    topLeft: Radius.circular(40.0)),
                color: Colors.white),
            child: ListView(
              children: <Widget>[
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          'MOST POPULAR',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          'RECENT',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 250.0,
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              GestureDetector(
                                onTap: (){
                                  Navigator.pushNamed(context, 'profile');
                                },
                                child: Container(
                                  width: 45,
                                  height: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.0),
                                      color: Colors.white,
                                      image: DecorationImage(
                                          image: AssetImage('images/man.jpg'),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                              SizedBox(
                                width: 7.0,
                              ),
                              Column(
                                children: <Widget>[
                                  Text(
                                    "Max Bator",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  ),
                                  Text('2 mins ago',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12))
                                ],
                              ),
                              SizedBox(width: 165.0),
                              Icon(
                                Icons.tune,
                                size: 19.0,
                              )
                            ],
                          ),
                          SizedBox(height: 5.0),
                          Container(
                              height: 200.0,
                              color: Colors.white,
                              padding: EdgeInsets.only(top: 5.0, left: 7.0),
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: picturelist.length,
                                  itemBuilder: (BuildContext context, index) {
                                    return Stack(
                                      children: <Widget>[
                                        Container(
                                          margin: EdgeInsets.only(left: 10.0),
                                          height: 190,
                                          width: 220,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(18.0),
                                              image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: AssetImage(
                                                      picturelist[index]))),
                                        ),
                                        Positioned(
                                          bottom: 15.0,
                                          right: 14.0,
                                          child: Row(children: <Widget>[
                                            Container(
                                                width: 33.0,
                                                height: 33.0,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    color: Colors.white),
                                                child: Icon(
                                                  Icons.reply,
                                                  size: 19.0,
                                                )),
                                            SizedBox(width: 7.0),
                                            Container(
                                                width: 33.0,
                                                height: 33.0,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    color: Colors.white),
                                                child: Icon(
                                                  Icons.favorite_border,
                                                  size: 19.0,
                                                ))
                                          ]),
                                        ),
                                      ],
                                    );
                                  }
                                  )
                                  )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 17.0,
                ),
                Container(
                  height: 250.0,
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Container(
                                width: 45,
                                height: 45,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                    color: Colors.white,
                                    image: DecorationImage(
                                        image:
                                            AssetImage('images/campbell.jpg'),
                                        fit: BoxFit.cover)),
                              ),
                              SizedBox(
                                width: 7.0,
                              ),
                              Column(
                                children: <Widget>[
                                  Text(
                                    "Erka Berka",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  ),
                                  Text('45 mins ago',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12))
                                ],
                              ),
                              SizedBox(width: 165.0),
                              Icon(
                                Icons.tune,
                                size: 19,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                              height: 180.0,
                              color: Colors.white,
                              padding: EdgeInsets.only(top: 5.0, left: 7.0),
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: picturelist.length,
                                  itemBuilder: (BuildContext context, index) {
                                    return Stack(
                                      children: <Widget>[
                                        Container(
                                          margin: EdgeInsets.only(left: 10.0),
                                          height: 190,
                                          width: 200,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(18.0),
                                              image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: AssetImage(
                                                      picturelist[index]))),
                                        ),
                                        Positioned(
                                          bottom: 15.0,
                                          right: 14.0,
                                          child: Row(children: <Widget>[
                                            Container(
                                                width: 33.0,
                                                height: 33.0,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    color: Colors.white),
                                                child: Icon(
                                                  Icons.reply,
                                                  size: 19.0,
                                                )),
                                            SizedBox(width: 7.0),
                                            Container(
                                                width: 33.0,
                                                height: 33.0,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    color: Colors.white),
                                                child: Icon(
                                                  Icons.favorite_border,
                                                  size: 19.0,
                                                ))
                                          ]),
                                        ),
                                      ],
                                    );
                                  }))
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ))
        ]));
  }
}
