import 'package:flutter/material.dart';

class ListPhoto extends StatelessWidget {
  final List picturelist = [
    'images/plant3.jpg',
    'images/pic1.jpg',
    'images/food5.jpg',
    'images/man.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: picturelist.length,
        itemBuilder: (BuildContext context, index) {
          return Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 10.0),
                height: 178,
                width: 190,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(18.0),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(picturelist[index]))),
              ),
              Positioned(
                bottom: 10.0,
                right: 10.0,
                child: Row(children: <Widget>[
                  Container(
                      width: 33.0,
                      height: 33.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white),
                      child: Icon(
                        Icons.reply,
                        size: 19.0,
                      )),
                  SizedBox(width: 5.0),
                  Container(
                      width: 33.0,
                      height: 33.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white),
                      child: Icon(
                        Icons.favorite_border,
                        size: 19.0,
                      ))
                ]),
              ),
            ],
          );
        });
  }
}
