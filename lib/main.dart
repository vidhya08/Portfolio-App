import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //main app where code starts
      home: Scaffold(
        // wrapper for all class
        backgroundColor: Colors.brown[100],
        body: SafeArea(
            // content for parent i.e scaffold goes here
            child: Column(
          mainAxisAlignment: MainAxisAlignment
              .center, // makes column align to center of screen
          children: <Widget>[
            CircleAvatar(
              // saves image in a circlular border
              radius: 70.0,
              backgroundImage: AssetImage('images/Vidhya.jpeg'),
            ),
            SizedBox(
              // works as a padding between 2 component
              height: 20.0,
              width: 150.0,
            ),
            Text(
              'Vidhya Rani Ashok Chaudhary',
              style: TextStyle(
                fontFamily: 'Comic',
                fontSize: 30.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
            ),
            Text(
              'FULL-STACK DEVELOPER',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                color: Colors.grey.shade900,
                fontSize: 20.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.grey.shade900,
              ),
            ),
            Card(
                color: Colors.teal[500],
                // works as a text but with round corner and material design
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  // divides box in 2 values.
                  leading: Icon(
                    Icons.phone,
                    color: Colors.white,
                  ),
                  title: Text(
                    '+91 98214 41605',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                  ),
                )),
            Card(
              color: Colors.teal[500],
              margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal:
                      25.0), // use edgeInsets whenever need to pass value. such as padding , margin etc.
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                title: Text(
                  'vidhyachaudhary08@gmail.com',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontFamily: 'Source Sans Pro'),
                ),
              ),
            ),
            Card(
              color: Colors.teal[500],
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.person_pin_circle,
                  size: 30.0,
                  color: Colors.white,
                ),
                title: GestureDetector(
                  child: Text(
                    'Linkedin',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontFamily: 'Comic',
                    ),
                  ),
                  onTap: () {
                    launch('https://linkedin.com/in/vidhya-chaudhary/');
                  },
                ),
              ),
            ),
            Card(
              color: Colors.teal[500],
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.portrait,
                  size: 30.0,
                  color: Colors.white,
                ),
                title: GestureDetector(
                  child: Text(
                    'GitHub',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontFamily: 'Comic',
                    ),
                  ),
                  onTap: () {
                    launch('https://github.com/vidhyachaudhary');
                  },
                ),
              ),
            ),
            Card(
              color: Colors.teal[500],
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.person,
                  size: 30.0,
                  color: Colors.white,
                ),
                title: GestureDetector(
                  child: Text(
                    'Resume',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontFamily: 'Comic',
                    ),
                  ),
                  onTap: () {
                    launch(
                        'https://docs.google.com/document/d/1lDj8o3f76gWxBjSbpsVENTGC6b9a7sYNPT9zKqWNixY/edit#');
                  },
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
