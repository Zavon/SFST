import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:pdfview/pdfview.dart';
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
      accentColor: Colors.blueAccent,
      primaryColorDark: Colors.blue,
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
//HGN
  bool hgn1 = false; //Lack of Smooth Pursuit
  bool hgn2 = false; //Distinct and Sustained Nystagmus at Maximum Deviation
  bool hgn3 = false; //Onset prior to 45 degrees
  bool hgn4 = false; //Lack of Smooth Pursuit
  bool hgn5 = false; //Distinct and Sustained Nystagmus at Maximum Deviation
  bool hgn6 = false; //Onset prior to 45 degrees


  String _hstring1;
  String _hstring2;
  String _hstring3;
  String _hstring4;
  String _hstring5;
  String _hstring6;

  //WAT
  bool wat1 = false; //Can't keep balance
  bool wat2 = false; //Starts too soon
  bool wat3 = false; //Stops Walking
  bool wat4 = false; //Misses heel to toe
  bool wat5 = false; //Steps off line
  bool wat6 = false; //Uses arms for balance
  bool wat7 = false; //Wrong number of steps
  bool wat8 = false; //Improper turn

  String _wstring1;
  String _wstring2;
  String _wstring3;
  String _wstring4;
  String _wstring5;
  String _wstring6;
  String _wstring7;
  String _wstring8;


  //OLS
  bool ols1 = false; //Sways
  bool ols2 = false; //Uses Arms for Balance
  bool ols3 = false; //Hops
  bool ols4 = false; //Puts Foot Down

  String _ostring1;
  String _ostring2;
  String _ostring3;
  String _ostring4;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Clues'),
      ),

      body: Container(
        child: new ListView(
          children: <Widget>[
            Text('Horizontal Gaze Nystagmus Left Eye',
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            new CheckboxListTile(
              title: const Text('Lack of Smooth Pursuit'),
              value: hgn1,
              activeColor: Colors.blueAccent,
              onChanged: (bool value) {
                setState(() {
                  hgn1 = value;
                });
              },
            ),
            new CheckboxListTile(
              title: const Text(
                  'Distinct and Sustained  Nystagmus at Maximum Deviation'),
              value: hgn2,
              activeColor: Colors.blueAccent,
              onChanged: (bool value) {
                setState(() {
                  hgn2 = value;
                });
              },
            ),
            new CheckboxListTile(
              title: const Text('Onset Prior to 45 Degrees'),
              value: hgn3,
              activeColor: Colors.blueAccent,
              onChanged: (bool value) {
                setState(() {
                  hgn3 = value;
                });
              },
            ),
            Text('Horizontal Gaze Nystagmus Right Eye',
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            new CheckboxListTile(
              title: const Text('Lack of Smooth Pursuit'),
              value: hgn4,
              activeColor: Colors.blueAccent,
              onChanged: (bool value) {
                setState(() {
                  hgn4 = value;
                });
              },
            ),
            new CheckboxListTile(
              title: const Text(
                  'Distinct and Sustained  Nystagmus at Maximum Deviation'),
              value: hgn5,
              activeColor: Colors.blueAccent,
              onChanged: (bool value) {
                setState(() {
                  hgn5 = value;
                });
              },
            ),
            new CheckboxListTile(
              title: const Text('Onset Prior to 45 Degrees'),
              value: hgn6,
              activeColor: Colors.blueAccent,
              onChanged: (bool value) {
                setState(() {
                  hgn6 = value;
                });
              },
            ),
            Text('Walk and Turn',
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            new CheckboxListTile(
              title: const Text("Can't Keep Balance"),
              subtitle: const Text('Instruction Stage'),
              value: wat1,
              activeColor: Colors.blueAccent,
              onChanged: (bool value) {
                setState(() {
                  wat1 = value;
                });
              },
            ),
            new CheckboxListTile(
              title: const Text('Starts too Soon'),
              subtitle: const Text('Instruction Stage'),
              value: wat2,
              activeColor: Colors.blueAccent,
              onChanged: (bool value) {
                setState(() {
                  wat2 = value;
                });
              },
            ),
            new CheckboxListTile(
              title: const Text("Stops Walking"),
              value: wat3,
              onChanged: (bool value) {
                setState(() {
                  wat3 = value;
                });
              },
            ),
            new CheckboxListTile(
              title: const Text('Misses Heel to Toe'),
              value: wat4,
              activeColor: Colors.blueAccent,
              onChanged: (bool value) {
                setState(() {
                  wat4 = value;
                });
              },
            ),
            new CheckboxListTile(
              title: const Text("Steps Off Line"),
              value: wat5,
              activeColor: Colors.blueAccent,
              onChanged: (bool value) {
                setState(() {
                  wat5 = value;
                });
              },
            ),
            new CheckboxListTile(
              title: const Text('Uses Arms for Balance'),
              value: wat6,
              activeColor: Colors.blueAccent,
              onChanged: (bool value) {
                setState(() {
                  wat6 = value;
                });
              },
            ),
            new CheckboxListTile(
              title: const Text("Wrong Number of Steps"),
              value: wat7,
              activeColor: Colors.blueAccent,
              onChanged: (bool value) {
                setState(() {
                  wat7 = value;
                });
              },
            ),
            new CheckboxListTile(
              title: const Text('Improper Turn'),
              value: wat8,
              activeColor: Colors.blueAccent,
              onChanged: (bool value) {
                setState(() {
                  wat8 = value;
                });
              },
            ),
            Text('One Legged Stand',
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            new CheckboxListTile(
              title: const Text("Sways"),
              value: ols1,
              activeColor: Colors.blueAccent,
              onChanged: (bool value) {
                setState(() {
                  ols1 = value;
                });
              },
            ),
            new CheckboxListTile(
              title: const Text('Uses Arms for Balance'),
              value: ols2,
              activeColor: Colors.blueAccent,
              onChanged: (bool value) {
                setState(() {
                  ols2 = value;
                });
              },
            ),
            new CheckboxListTile(
              title: const Text("Hops"),
              value: ols3,
              activeColor: Colors.blueAccent,
              onChanged: (bool value) {
                setState(() {
                  ols3 = value;
                });
              },
            ),
            new CheckboxListTile(
              title: const Text('Puts Foot Down'),
              value: ols4,
              activeColor: Colors.blueAccent,
              onChanged: (bool value) {
                setState(() {
                  ols4 = value;
                });
              },
            ),

          ],
        ),
      ),


      floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.receipt), onPressed: () {
        _Shstring1();
        _Shstring2();
        _Shstring3();
        _Shstring4();
        _Shstring5();
        _Shstring6();
        _Swstring1();
        _Swstring2();
        _Swstring3();
        _Swstring4();
        _Swstring5();
        _Swstring6();
        _Swstring7();
        _Swstring8();
        _Sostring1();
        _Sostring2();
        _Sostring3();
        _Sostring4();
        pdfview(
            """<h1>SFST Report</h1><table border=1><td>Horizontal Gaze Nystagmus</td></table> <ul><li>${_hstring1}</li><li>${_hstring2}</li><li>${_hstring3}
        <li>${_hstring4}</li><li>${_hstring5}</li><li>${_hstring6}</li></ul> \n\n\n\n<table border=1><td>Walk and Turn</td></table> <ul><li>${_wstring1}</li><li>${_wstring2}</li><li>${_wstring3}
        <li>${_wstring4}</li><li>${_wstring5}</li><li>${_wstring6}</li><li>${_wstring7}</li><li>${_wstring8}</li></ul>\n\n\n\n<table border=1><td>One Legged Stand</td></table> <ul><li>${_ostring1}</li><li>${_ostring2}</li><li>${_ostring3}
        <li>${_ostring4}</li></ul> """);
      }),
    );
  }

  void _Shstring1() {
    if (hgn1 == true) {
      _hstring1 =
      "Defendant displayed a lack of smooth pursuit in the left eye. ";
    } else {
      _hstring1 =
      "Defendant did not display a lack of smooth pursuit in the left eye. ";
    };
  }

  void _Shstring2() {
    if (hgn2 == true) {
      _hstring2 =
      "Defendant displayed Distinct and Sustained Nystagmus at Maximum Deviation in the left eye. ";
    } else {
      _hstring2 =
      "Defendant did not display Distinct and Sustained Nystagmus at Maximum Deviation in the left eye. ";
    };
  }

  void _Shstring3() {
    if (hgn3 == true) {
      _hstring3 =
      "Defendant displayed an onset of Nystagmus prior to 45 degrees in the left eye. ";
    } else  {
      _hstring3 =
      "Defendant did not display an onset of Nystagmus prior to 45 degrees in the left eye. ";
    };
  }

  void _Shstring4() {
    if (hgn4 == true) {
      _hstring4 =
      "Defendant displayed a lack of smooth pursuit in the right eye ";
    } else {
      _hstring4 =
      "Defendant did not display a lack of smooth pursuit in the right eye";
    };
  }

  void _Shstring5() {
    if (hgn5 == true) {
      _hstring5 =
      "Defendant displayed Distinct and Sustained Nystagmus at Maximum Deviation in the right eye";
    } else {
      _hstring5 =
      "Defendant did not display Distinct and Sustained Nystagmus at Maximum Deviation in the right eye";
    };
  }

  void _Shstring6() {
    if (hgn6 == true) {
      _hstring6 =
      "Defendant displayed an onset of Nystagmus prior to 45 degrees in the right eye";
    } else  {
      _hstring6 =
      "Defendant did not display an onset of Nystagmus prior to 45 degrees in the right eye";
    };
  }

  void _Swstring1() {
    if (wat1 == true) {
      _wstring1 =
      "Defendant could not keep balance during instruction phase. ";
    } else {
      _wstring1 =
      "Defendant kept balance during instruction phase. ";
    };
  }

  void _Swstring2() {
    if (wat2 == true) {
      _wstring2 =
      "Defendant started too soon. ";
    } else {
      _wstring2 =
      "Defendant did not start during instruction phase. ";
    };
  }

  void _Swstring3() {
    if (wat3 == true) {
      _wstring3 =
      "Defendant stopped walking. ";
    } else {
      _wstring3 =
      "Defendant did not stop walking. ";
    };
  }

  void _Swstring4() {
    if (wat4 == true) {
      _wstring4 =
      "Defendant missed heel to toe. ";
    } else {
      _wstring4 =
      "Defendant did not miss heel to toe. ";
    };
  }

  void _Swstring5() {
    if (wat5 == true) {
      _wstring5 =
      "Defendant stepped off line. ";
    } else {
      _wstring5 =
      "Defendant did not step off line. ";
    };
  }

  void _Swstring6() {
    if (wat6 == true) {
      _wstring6 =
      "Defendant used arms for balance. ";
    } else {
      _wstring6 =
      "Defendant did not use arms for balance. ";
    };
  }

  void _Swstring7() {
      if (wat7 == true) {
        _wstring7 =
        "Defendant took the wrong number of steps. ";
      } else  {
        _wstring7 =
        "Defendant took the correct number of steps. ";
      }
    }
    
  void _Swstring8() {
    if (wat8 == true) {
      _wstring8 =
      "Defendant made an improper turn. ";
    } else {
      _wstring8 =
      "Defendant did not make an improper turn. ";
    }
  }

  void _Sostring1() {
    if (ols1 == true) {
      _ostring1 =
      "Defendant swayed. ";
    } else  {
      _ostring1 =
      "Defendant did not sway. ";
    }
  }

  void _Sostring2() {
    if (ols2 == true) {
      _ostring2 =
      "Defendant used arms for balance. ";
    } else  {
      _ostring2 =
      "Defendant did not use arms for balance. ";
    }
  }

  void _Sostring3() {
    if (ols3 == true) {
      _ostring3 =
      "Defendant hopped. ";
    } else  {
      _ostring3 =
      "Defendant did not hop. ";
    }
  }

  void _Sostring4() {
    if (ols4 == true) {
      _ostring4 =
      "Defendant put foot down. ";
    } else {
      _ostring4 =
      "Defendant did not put foot down. ";
    }
  }

}