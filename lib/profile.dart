import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Profile> {
  final List<String> picturelist2 = [
    'images/plant4.jpg',
    'images/plnt.jpg',
    'images/plant0.jpg',
    'images/man.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF1A3D3F),
        /*  appBar: AppBar(
          elevation: 0.0,
          backgroundColor:Color(0xFFFFE8C0),
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
                size: 18.0,
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.black,
                  size: 18.0,
                ),
                onPressed: () {}),
            SizedBox(
              width: 5.0,
              height: 5.0,
            )
          ],
        ),    */
        body: Stack(children: <Widget>[
          // SizedBox(height: 5.0, ),
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height / 1.9,
              padding: EdgeInsets.only(left: 20.0, right: 30.0, top: 17.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0)),
                  color: Colors.white //Color(0xFFFFE8C0)
                  ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                            icon: Icon(Icons.arrow_back_ios,
                                size: 19.0, color: Colors.black),
                            onPressed: () {
                              Navigator.pop(context);
                            }),
                        Icon(
                          Icons.more_vert,
                          size: 19.0,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage('images/man.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(height: 15.0),
                  Text(
                    "Max Bator",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Kiev, Ukraine",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  SizedBox(height: 30.0),
                  Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          //    SizedBox(width:8.0,),
                          Column(
                            children: <Widget>[
                              Text('280',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold)),
                              Text('photos')
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text('2,107',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold)),
                              Text('followers')
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text('104',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold)),
                              Text('follows')
                            ],
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          // SizedBox(height: 40.0),
          Positioned(
              bottom: 40,
              left: 0,
              right: 0,
              child: Container(
                height: 260.0,
                width: MediaQuery.of(context).size.width,
                //color: Colors.white,
                padding: EdgeInsets.only(left: 25.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(
                              'COLLECTIONS',
                              style: TextStyle(
                                  color: Colors.white,
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
                              'FEATURED',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 20.0),
                    Container(
                        height: 215.0,
                        //   width: 300.0,
                        //color: Colors.white,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: picturelist2.length,
                            itemBuilder: (BuildContext context, index) {
                              return Stack(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(left: 10.0),
                                    height: 220,
                                    width: 220,
                                    decoration: BoxDecoration(
                                        color: Colors.grey[700],
                                        borderRadius:
                                            BorderRadius.circular(22.0),
                          /*              image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                picturelist2[index]
                                                )
                                                )  */
                                                ),
                                                child: Column(
                                                  children: <Widget>[
                                                    Container(
                                                      height: 160.0,
                                                      
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(22.0),
                                                        color: Colors.white,
                                                        image: DecorationImage(
                                                        fit: BoxFit.cover,
                                                    image: AssetImage(
                                                picturelist2[index]
                                                )
                                                )  
                                                      ),
                                                    ),
                                                    SizedBox(height: 16.0),
                                                    Text('Nature Collection' , style: TextStyle(fontSize: 15 , fontWeight: FontWeight.bold , color: Colors.white),)
                                               ,    Text('1,003 Photos' , style: TextStyle(color: Colors.white),)
                                                  ],
                                                ),
                                  ),
                                  
                                  Positioned(
                                    right: 10.0,
                                    top: 10.0,
                                    child: Row(children: <Widget>[
                                      Container(
                                          width: 33.0,
                                          height: 33.0,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              color: Colors.grey),
                                          child: Icon(
                                            Icons.edit,
                                            size: 19.0,
                                            color: Colors.white,
                                          )
                                          ),
                                    ]),
                                  ),
                                ],
                              );
                            }))
                  ],
                ),
              ))
        ]));
  }
}
