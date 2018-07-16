import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:dynamic_theme/theme_switcher_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:sticky_header_list/sticky_header_list.dart';

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
      accentColor: Colors.blue,
      brightness: brightness,
    ),
    themedWidgetBuilder: (context, theme) {
    return new MaterialApp(
    theme: theme,


        routes:
    {
    '/': (context) => FirstScreen(),
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
                    '1.6\n',
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
                      IconButton(
                          icon: Icon(Icons.info_outline),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AboutScreen()));
                          }),
                      new IconButton(
                          icon: Icon(Icons.brightness_6),
                          onPressed: changeBrightness)
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
                                      fontSize: 28.0
                                    )
                              ),

                            ),
                            Text(
                              '\n1. I am going to check your eyes.\n\n2. Keep your head still and follow the stimulus with your eyes only.\n\n3. Do not move your head.\n\n4. Do you understand the instructions?',
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
                                    'Walk and Turn',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 28.0
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
                                        fontSize: 28.0
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


class SecondScreen extends StatefulWidget {
  @override
  SecondScreenState createState() => SecondScreenState();
}

class SecondScreenState extends State<SecondScreen> {
  Map<String, bool> values1Hdr = {
    'Horizontal Gaze Nystagmus Right Eye': false,
  };

  Map<String, bool> values = {
    'Lack of Smooth Pursuit': false,
    'Distinct and Sustained Nystagmus at Maximum Deviation': false,
    'Onset Prior To 45 degress': false,
  };

  Map<String, bool> valuesLHdr = {
    'Horizontal Gaze Nystagmus Right Eye': false,
  };

  Map<String, bool> valuesL = {
    'Lack of Smooth Pursuit': false,
    'Distinct and Sustained Nystagmus at Maximum Deviation': false,
    'Onset Prior To 45 degress': false,
  };

  Map<String, bool> values2Hdr = {
    'Walk and Turn': false,
  };
  Map<String, bool> values2 = {
    'Starts too soon': false,
    'Cannot keep balance': false,
    'Stops while walking': false,
    'Misses heel to toe': false,
    'Steps off line': false,
    'Improper turn': false,
    'Wrong number of steps': false,
  };

  Map<String, bool> values3Hdr = {
    'One Legged Stand': false,
  };
  Map<String, bool> values3 = {
    'Swaying': false,
    'Uses arms to balance': false,
    'Hopping': false,
    'Puts foot down': false,
  };

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text('Clues')),
        body: new Container(
            child: new StickyList(
          children: <StickyListRow>[
            new HeaderRow(child: _hgnLHdr(4)),
            new RegularRow(child: _hgnL()),
            new HeaderRow(child: _hgnRHdr(1)),
            new RegularRow(child: _hgnR()),
            new HeaderRow(child: _watHdr(2)),
            new RegularRow(child: _wat()),
            new HeaderRow(child: _olsHdr(3)),
            new RegularRow(child: _ols())
          ],
        )));
  }

  List<Widget> getRegularWidgets() {
    List<Widget> widgets = values.keys.map((key) {
      return new CheckboxListTile(
          title: new Text(key),
          value: values[key],
          onChanged: (bool value) {
            setState(() {
              values[key] = value;
            });
          });
    }).toList();
    return widgets;
  }

  List<Widget> hgnL() {
    List<Widget> widgets4 = valuesL.keys.map((key) {
      return new CheckboxListTile(
          title: new Text(key),
          value: valuesL[key],
          onChanged: (bool value) {
            setState(() {
              valuesL[key] = value;
            });
          });
    }).toList();

    return widgets4;
  }

  List<Widget> ols() {
    List<Widget> widgets3 = values3.keys.map((key) {
      return new CheckboxListTile(
          title: new Text(key),
          value: values3[key],
          onChanged: (bool value) {
            setState(() {
              values3[key] = value;
            });
          });
    }).toList();

    return widgets3;
  }

  List<Widget> wat() {
    List<Widget> widgets2 = values2.keys.map((key) {
      return new CheckboxListTile(
          title: new Text(key),
          value: values2[key],
          onChanged: (bool value) {
            setState(() {
              values2[key] = value;
            });
          });
    }).toList();

    return widgets2;
  }

  Widget _hgnL() {
    return new Column(
      children: hgnL(),
    );
  }

  Widget _hgnLHdr(index) {
    return new Row(
      children: <Widget>[
        new Container(
            child: new Text("Horizontal Gaze Nystagmus Left Eye",
                style: new TextStyle(
                    fontSize: 20.0,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold)))
      ],
    );
  }

  Widget _hgnR() {
    return new Column(
      children: getRegularWidgets(),
    );
  }

  Widget _hgnRHdr(index) {
    return new Row(
      children: <Widget>[
        new Container(
            child: new Text("Horizontal Gaze Nystagmus Right Eye",
                style: new TextStyle(
                    fontSize: 20.0,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold)))
      ],
    );
  }

  Widget _ols() {
    return new Column(
      children: ols(),
    );
  }

  Widget _olsHdr(index) {
    return new Row(
      children: <Widget>[
        new Text("One Legged Stand",
            style: new TextStyle(
                fontSize: 20.0,
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold))
      ],
    );
  }

  Widget _wat() {
    return new Column(
      children: wat(),
    );
  }

  Widget _watHdr(index) {
    return new Row(
      children: <Widget>[
        new Text("Walk and Turn",
            style: new TextStyle(
                fontSize: 20.0,
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold))
      ],
    );
  }
}
