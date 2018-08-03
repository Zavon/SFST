import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:pdfview/pdfview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';


import 'about.dart';
import 'secondscreen.dart';

void main() {
  runApp(new MyApp());
}

final flutterWebviewPlugin = new FlutterWebviewPlugin();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new DynamicTheme(
        defaultBrightness: Brightness.light,
        data: (brightness) => new ThemeData(
      primarySwatch: Colors.blue,
      accentColor: Colors.blueAccent,
      fontFamily: "Raleway",
      primaryColorDark: Colors.blue,
      brightness: brightness,
    ),
    themedWidgetBuilder: (context, theme) {
    return new MaterialApp(
    theme: theme,


        routes:
    {
    '/': (context) => FirstScreen(),
      '/about': (context) => AboutScreen(),
    '/c': (_) => new WebviewScaffold(
    url: "https://zavon.org/sfst/changelog.md",
    appBar: new AppBar(
    title: new Text("Changelog"),
    ),
    )
    });
    }
    );

  }
}





class FirstScreen extends StatefulWidget {
  @override
  FirstScreenState createState() => new FirstScreenState();
}

class FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {

            return DefaultTabController(
              length: 3,
              child: Scaffold(
                  appBar: AppBar(
                    actions: <Widget>[
                      new IconButton(
                          icon: Icon(Icons.brightness_6),
                          onPressed: changeBrightness),
                      IconButton(
                          icon: Icon(Icons.info_outline),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AboutScreen()));
                          }),

    ],
                    bottom: TabBar(
                      tabs: [
                        Tab(text: "HGN"),
                        Tab(text: "WAT"),
                        Tab(
                          text: "OLS",
                        ),
                      ],
                    ),
                    title: Text('SFST Guide'),
                  ),
                  body: TabBarView(
                    children: <Widget>[
                      Container(
                        padding: new EdgeInsets.only(
                            top: 10.0, left: 8.0, right: 8.0),
                        child: ListView(
                          children: [
                            Container(
                              child: Text(
                                'Horizontal Gaze Nystagmus',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 28.0,
                                      fontFamily: 'Montserrat'
                                    )
                              ),

                            ),
                            Text(
                              '\n1. I am going to check your eyes.\n\n2. Keep your head still and follow the stimulus with your eyes only.\n\n3. Do not move your head.\n\n4. Do you understand the instructions?',
                            textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20.0,
                                fontFamily: 'Raleway'
                              ),
                            )
                          ],
                        )
                      ),
                      new Container(
                        padding: new EdgeInsets.only(
                            top: 10.0, left: 8.0, right: 8.0),
                          child: ListView(
                            children: [
                              Container(
                                child: Text(
                                    'Walk and Turn',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 28.0,
                                        fontFamily: 'Montserrat'
                                    )
                                ),

                              ),
                              Text(
                                '\n1. Put your left foot on the line and put your right foot in front of it with your right heel touching your left toe. Keep your hands at your side.\n\n2.Do not start until I tell you to.\n\n3. Do you understand the directions?\n\n4. When I tell you to begin, take nine heel to toe steps on the line, turn around keeping one foot on the line, and return nine heel to toe steps.\n\n5. On the ninth step, keep the front foot on the line and turn by taking several small steps with the other foot.\n\n6. Whilewalking, watch your feet at all times, keep arms at side, count steps out loud. Once you begin, do not stop until test is completed.\n\n7. Do you understand the instructions?\n\n8. You may begin the test.\n',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                              )
                            ],
                          )
                      ),
                      new Container(
                          padding: new EdgeInsets.only(
                              top: 10.0, left: 8.0, right: 8.0),
                          child: ListView(
                            children: [
                              Container(
                                child: Text(
                                    'One Legged Stand',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 28.0,
                                        fontFamily: 'Montserrat'
                                    )
                                ),

                              ),
                              Text(
                                '\n1. Stand with your heels together and your arms at your side.\n\n2. Do not begin until I tell you to.\n\n3. Do you understand?\n\n4. When I tell you, I want you to raise one leg, either leg, approximately six inches off the ground, foot pointed out. Keep both legs straight and keep your eyes on the elevated foot.\n\n5. While holding that position, count out loud; one thousand and one, one thousand and two, one thousand and three, and so forth until told to stop.\n\n6. Do you understand the instructions?\n\n7. You may begin the test.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                              )
                            ],
                          )
                      ),
                    ],
                  ),
                  floatingActionButton: new FloatingActionButton(
                    child: new Icon(Icons.assignment),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (BuildContext context) {
                          return new
                          SecondScreen();
                        }
                        ),
                      );
                    },
                  )),

          );
        }


  void changeBrightness() {
    DynamicTheme.of(context).setBrightness(Theme.of(context).brightness == Brightness.dark? Brightness.light: Brightness.dark);
  }
  void changeColor() {
    DynamicTheme.of(context).setThemeData(new ThemeData(
        primaryColor: Theme.of(context).primaryColor == Colors.indigo? Colors.red: Colors.indigo
    ));
  }
  }

