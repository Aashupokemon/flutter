import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:profile_app/action.dart';

myhome() {
  var mybody = Container(
    alignment: Alignment.center,
    height: double.infinity,
    width: double.infinity,
    margin: EdgeInsets.all(10),
    child: Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          width: 350,
          height: 150,
          alignment: Alignment.center,
          margin: EdgeInsets.all(60),
          decoration: BoxDecoration(
              color: Colors.pink,
              border: Border.all(
                color: Colors.pink.shade900,
                width: 3,
              ),
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(Icons.people),
                  Text(
                    '    AYUSH GUPTA',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Icon(Icons.email),
                  Text(
                    '    ayushguptavector@gmail.com',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        GestureDetector(
          onTap: ZoomImage,
          child: Container(
            width: 100,
            height: 100,
            //color: Colors.pink.shade200,
            decoration: BoxDecoration(
              color: Colors.pink.shade200,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: Colors.pink.shade900,
                width: 3,
              ),
              image: DecorationImage(
                image: NetworkImage(
                    'https://raw.githubusercontent.com/Aashupokemon/flutter/master/107101861_2678323565823123_3600271352313151858_o.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        )
      ],
    ),
  );
  FlutterStatusbarcolor.setStatusBarColor(Colors.pink.shade200);
  return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink.shade400,
          leading: Icon(Icons.contacts),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.add_a_photo), onPressed: addphoto),
            IconButton(icon: Icon(Icons.bookmark), onPressed: bookmark),
          ],
          title: Text('MY PROFILE'),
        ),
        body: mybody,
      ));
}
