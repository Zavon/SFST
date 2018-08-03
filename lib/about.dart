import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

import 'main.dart';


class AboutScreen extends StatefulWidget {
  @override
  AboutScreenState createState() => new AboutScreenState();
}

class AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("About"),
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              new Text(
                'Version\n',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 28.0
                ),
              ),
              Text(
                '2.1\n',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20.0
                ),
              ),
              Text(
                'Developer\n',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 28.0
                ),
              ),
              Text(
                'Zavon\n',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20.0
                ),
              ),
              Text(
                'Contact\n',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 28.0
                ),
              ),
              Text(
                'zavon@zavon.org',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                ),
              )
            ],
          ),
        ),

        // ...


        floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.announcement),
          onPressed: () {
            Navigator.pushNamed(context, '/c');
          },
        ));
  }
}