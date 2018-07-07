import 'package:flutter/material.dart';
import 'package:sticky_header_list/sticky_header_list.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';



void main() {
  runApp(MaterialApp(
    title: 'SFST Guide',
theme: ThemeData.light(),

      routes: {
        '/': (context)=> FirstScreen(),
        '/c': (_) => new WebviewScaffold(
          url: "https://zavon.org/sfst/changelog",
          appBar: new AppBar(
            title: new Text("Changelog"),
          ),
        )
      }
  ));
}


final flutterWebviewPlugin = new FlutterWebviewPlugin();

class FirstScreen extends StatefulWidget {
  @override
  FirstScreenState createState() => new FirstScreenState();
}

class FirstScreenState extends State<FirstScreen> {
  @override

  Widget build(BuildContext context) {
    return new MaterialApp(

      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            actions: <Widget>[
              IconButton(icon: Icon(Icons.info_outline), onPressed:() {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AboutScreen())
          );
        }
              ),



            ],

            bottom: TabBar(
              tabs: [
                Tab(text: "HGN"),
                Tab(text: "WAT"),
                Tab(text: "OLS",),
              ],
            ),
            title: Text('SFST Guide'),
          ),
          body: TabBarView(
            children: <Widget>[
              new Container(
                padding: new EdgeInsets.only(top: 10.0, left: 8.0, right: 8.0),
                child: new ListView(
                  children: <Widget>[
                    new RichText(
                      textAlign: TextAlign.center,
                      text: new TextSpan(
                        children: <TextSpan>[
                          new TextSpan(
                            text: 'Horizontal Gaze Nystagmus\n',
                            style: new TextStyle(
                                fontSize: 28.0,
                              color: Colors.black,
                                ),
                          ),
                          new TextSpan(
                            text: '\n1. I am going to check your eyes.\n\n2. Keep your head still and follow the stimulus with your eyes only.\n\n3. Do not move your head.\n\n4. Do you understand the instructions?',
                            style: new TextStyle(
                                fontSize: 20.0,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              new Container(
                padding: new EdgeInsets.only(top: 10.0, left: 8.0, right: 8.0),
                child: new ListView(
                  children: <Widget>[
                    new RichText(
                      textAlign: TextAlign.center,
                      text: new TextSpan(
                        children: <TextSpan>[
                          new TextSpan(
                            text: 'Walk And Turn \n',
                            style: new TextStyle(
                                fontSize: 28.0,
                              color: Colors.black,
                                ),
                          ),
                          new TextSpan(
                            text: "\n1. Put your left foot on the line and put your right foot in front of it with your right heel touching your left toe. Keep your hands at your side.\n\n2.Do not start until I tell you to.\n\n3. Do you understand the directions?\n\n4. When I tell you to begin, take nine heel to toe steps on the line, turn around keeping one footon the line, and return nine heel to toe steps.\n\n5. On the ninth step, keep the front foot on the line and turn by taking several small steps with the other foot.\n\n6. Whilewalking, watch your feet at all times, keep arms at side, count steps out loud. Once you begin, do not stop until test is completed.\n\n7. Do you understand the instructions?\n\n8. You may begin the test\n",
                            style:
                            new TextStyle(
                              color: Colors.black,
                                fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
        new Container(
          padding: new EdgeInsets.only(top: 10.0, left: 8.0, right: 8.0),
          child: new ListView(
            children: <Widget>[
              new RichText(
                textAlign: TextAlign.center,
                text: new TextSpan(
                  children: <TextSpan>[
                    new TextSpan(
                      text: 'One Legged Stand \n',
                      style: new TextStyle(
                          fontSize: 28.0,
                        color: Colors.black,
                          ),
                    ),
                    new TextSpan(
                      text: "\n1. Stand with your heels together and your arms at your side.\n\n2. Do not begin until I tell you to.\n\n3. Do you understand?\n\n4. When I tell you, I want you to raise one leg, either leg, approximately six inches off the ground, foot pointed out. Keep both legs straight and keep your eyes on the elevated foot.\n\n5. While holding that position, count out loud; one thousand and one, one thousand and two, one thousand and three, and so forth until told to stop.\n\n6. Do you understand the instructions?\n\n7. You may begin the test.\n",
                      style: new TextStyle(
                          fontSize: 20.0,
                        color: Colors.black,

                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
            ],
          ),
          floatingActionButton: new FloatingActionButton(
            child: new Icon(Icons.assignment),
            onPressed: (){
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => SecondScreen()),
              );
            },
          )
        ),
      ),
    );
  }
}



class SecondScreen extends StatefulWidget {
  @override
  SecondScreenState createState() => new SecondScreenState();
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

  Widget _hgnLHdr(index) {
    return new Row(
      children: <Widget>[ new Container(
        color: Colors.white,
          child: new Text("Horizontal Gaze Nystagmus Left Eye",
      style : new TextStyle(
          fontSize: 20.0,
          decoration: TextDecoration.underline,
          fontWeight: FontWeight.bold)
      ))],
    );
  }

  Widget _hgnL() {
    return new Column(
      children: hgnL(),
    );
  }

  Widget _hgnRHdr(index) {
    return new Row(
      children: <Widget>[ new Container(
          color: Colors.white,
          child: new Text("Horizontal Gaze Nystagmus Right Eye",
              style : new TextStyle(
                  fontSize: 20.0,
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.bold)
          ))],
    );
  }

  Widget _hgnR() {
    return new Column(
      children: getRegularWidgets(),
    );
  }

  Widget _watHdr(index) {
    return new Row(
      children: <Widget>[new Text("Walk and Turn",
      style : new TextStyle(
          fontSize: 20.0,
          decoration: TextDecoration.underline,
          fontWeight: FontWeight.bold)
      )],
    );
  }

  Widget _wat() {
    return new Column(
      children: wat(),
    );
  }

  Widget _olsHdr(index) {
    return new Row(
      children: <Widget>[new Text("One Legged Stand",
          style : new TextStyle(
              fontSize: 20.0,
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.bold)
      )],
    );
  }

  Widget _ols() {
    return new Column(
      children: ols(),
    );
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
    return widgets;}

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

  }

class AboutScreen extends StatefulWidget {
  @override
  AboutScreenState createState() => new AboutScreenState();
}

class AboutScreenState extends State<AboutScreen> {
  
  @override
  Widget build(BuildContext context){
return Scaffold(
      appBar: new AppBar(
        title: new Text("About"),
      ),

      body: new Container(
        child:
      ListView(
        children: <Widget>[
          new RichText(
            textAlign: TextAlign.center,
            text: new TextSpan(
              children: <TextSpan>[
                new TextSpan(
                  text: 'Version\n',
                  style: new TextStyle(
                    fontSize: 28.0,
                    color: Colors.black,
                  ),
                ),
                new TextSpan(
                  text: '\n1.5\n',
                  style: new TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                  ),
                ),
                new TextSpan(
                  text: '\n\nDeveloper\n',
                  style: new TextStyle(
                    fontSize: 28.0,
                    color: Colors.black,
                  ),
                ),
                new TextSpan(
                  text: '\nZavon\n',
                  style: new TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                  ),
                ),
                new TextSpan(
                  text: '\n\nContact\n',
                  style: new TextStyle(
                    fontSize: 28.0,
                    color: Colors.black,
                  ),
                ),
                new TextSpan(
                  text: '\nzavon@zavon.org\n',
                  style: new TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                  ),
                ),
            new TextSpan(
              text: '\n\n\nChangelog\n',
              style: new TextStyle(
                fontSize: 28.0,
                color: Colors.black,
              ),
            ),
            new TextSpan(
              text: '\n-New app layout\n',
              style: new TextStyle(
                fontSize: 18.0,
                color: Colors.black,
              ),

            ),
            new TextSpan(
              text: '\n-Added clues section with checkbox. Preparing'
                  ' to add report creation\n',
              style: new TextStyle(
                fontSize: 18.0,
                color: Colors.black,
              ),
            )
              ],
            ),
          ),

          // ...


        ]

      ),
      ),

/*        floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.announcement),
          onPressed: (){
            Navigator.pushNamed(context, '/c');

          },
        )*/
    );

  }
}
