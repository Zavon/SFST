import 'package:flutter_html2pdf_viewer/flutter_html2pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:datetime_picker_formfield/time_picker_formfield.dart';

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
  bool wat7 = false; //Wrong numbe  r of steps
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

  //Case Info
  final myController = TextEditingController();
  final offenderController = TextEditingController();

  String _caseNumber;
  String _date;
 String _offender;

  final dateFormat = DateFormat("EEEE, MMMM d, yyyy 'at' h:mm a");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Notes'),
      ),
      body: Container(
        child: new ListView(
          children: <Widget>[
            new Card(
              child: new Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'Case Information',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  new ListTile(
                    leading: Icon(Icons.assignment),
                    title:       TextField(
                      decoration: InputDecoration(
                        hintText: 'Report Number',
                      ),
                      controller: myController,
                    ),

                  ),

                  new ListTile(
                    leading: Icon(Icons.person),
                    title:       TextField(
                      decoration: InputDecoration(
                        hintText: 'Offender',
                      ),
                      controller: offenderController,
                    ),

                  ),

                  new ListTile(
                    leading: Icon(Icons.today),
                    title: DateTimePickerFormField(
                        decoration: (InputDecoration(
                            hintText: 'Time and Date')),
                        format: dateFormat,
                        onChanged: (date) {
                          setState(() {
                            _date = dateFormat.format(date);
                          });
                        }),

                  ),

                ],
              ),
            ),
            new Card(
                child: new Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                  Text(
                    'Horizontal Gaze Nystagmus Left Eye',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
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
                ])),
            new Card(
                child: new Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                  Text(
                    'Horizontal Gaze Nystagmus Right Eye',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
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
                ])),
            new Card(
                child: new Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                  Text(
                    'Walk and Turn',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
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
                ])),
            new Card(
                child: new Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                  Text(
                    'One Legged Stand',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
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
                ])),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.receipt),
          onPressed: () {
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
            _Soffender();
            _Scase();
            pdfview(
                """<!DOCTYPE html>
<html>
<head>
<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
</style>
</head>
<body>

<h1>SFST Notes</h1>
<h2>Case Number: $_caseNumber<hr>
Offender Name: $_offender <hr>
Date: $_date </h2>   

<h3>Horizontal Gaze Nystagmus</h3>
<table>
	<tr>
    	<td>Clue</td>
        <td>Left Eye</td>
        <td>Right Eye</td>
    </tr>
    <tr>
    	<td>Lack of Smooth Pursuit</td>
        <td>$_hstring1</td>
        <td>$_hstring4</td>
     </tr>
         <tr>
    	<td>Distinct and Sustained Nystagmus at Maximum Deviation</td>
        <td>$_hstring2</td>
        <td>$_hstring5</td>
     </tr>
              <tr>
    	<td>Onset of Nystagmus prior to 45 degrees</td>
        <td>$_hstring3</td>
        <td>$_hstring6</td>
     </tr>
     </table>
     
<h3>Walk and Turn</h3>
<table>
	<tr>
    	<td>Clue</td>
        <td>Displayed</td>
    </tr>
    <tr>
    	<td>Could not keep balance</td>
        <td>$_wstring1</td>
     </tr>
         <tr>
    	<td>Started too soon</td>
        <td>$_wstring2</td>
     </tr>
         	<td>Stopped Walking</td>
        <td>$_wstring3</td>
     </tr>
         <tr>
    	<td>Missed heel to toe</td>
        <td>$_wstring4</td>
     </tr>
         <tr>
    	<td>Stepped off line</td>
        <td>$_wstring5</td>
     </tr>
         <tr>
    	<td>Used arms for balance</td>
        <td>$_wstring6</td>
     </tr>
         	<td>Wrong number of steps</td>
        <td>$_wstring7</td>
     </tr>
         <tr>
    	<td>Improper turn</td>
        <td>$_wstring8</td>
     </tr>

     </table>
     
     <h3>One Legged Stand</h3>
<table>
	<tr>
    	<td>Clue</td>
        <td>Displayed</td>
    </tr>
    <tr>
    	<td>Swayed</td>
        <td>$_ostring1</td>
     </tr>
         <tr>
    	<td>Used arms for balance</td>
        <td>$_ostring2</td>
     </tr>
         	<td>Hopped</td>
        <td>$_ostring3</td>
     </tr>
         <tr>
    	<td>Put foot down</td>
        <td>$_ostring4</td>
     </tr>
      
        







</body>
</html> """);
          }),
    );
  }

void _Scase() {
    if (myController.text != null) {
      _caseNumber = myController.text;
    } else {
      _caseNumber = " ";
    }
}

 void _Soffender() {
    if (offenderController.text != null) {
      _offender = offenderController.text;
    } else {
      _offender = " ";
    }
  }



  void _Shstring1() {
    if (hgn1 == true) {
      _hstring1 =
          "&#9746;";
    } else {
      _hstring1 =
          "&#9744; ";
    }
    ;
  }

  void _Shstring2() {
    if (hgn2 == true) {
      _hstring2 =
          "&#9746;";
    } else {
      _hstring2 =
          "&#9744; ";
    }
    ;
  }

  void _Shstring3() {
    if (hgn3 == true) {
      _hstring3 =
          "&#9746;";
    } else {
      _hstring3 =
          "&#9744;";
    }
    ;
  }

  void _Shstring4() {
    if (hgn4 == true) {
      _hstring4 =
          "&#9746;";
    } else {
      _hstring4 =
          "&#9744;";
    }
    ;
  }

  void _Shstring5() {
    if (hgn5 == true) {
      _hstring5 =
          "&#9746;";
    } else {
      _hstring5 =
          "&#9744;";
    }
    ;
  }

  void _Shstring6() {
    if (hgn6 == true) {
      _hstring6 =
          "&#9746;";
    } else {
      _hstring6 =
          "&#9744;";
    }
    ;
  }

  void _Swstring1() {
    if (wat1 == true) {
      _wstring1 = "&#9746;";
    } else {
      _wstring1 = "&#9744;";
    }
    ;
  }

  void _Swstring2() {
    if (wat2 == true) {
      _wstring2 = "&#9746;";
    } else {
      _wstring2 = "&#9744;";
    }
    ;
  }

  void _Swstring3() {
    if (wat3 == true) {
      _wstring3 = "&#9746;";
    } else {
      _wstring3 = "&#9744;";
    }
    ;
  }

  void _Swstring4() {
    if (wat4 == true) {
      _wstring4 = "&#9746;";
    } else {
      _wstring4 = "&#9744;";
    }
    ;
  }

  void _Swstring5() {
    if (wat5 == true) {
      _wstring5 = "&#9746;";
    } else {
      _wstring5 = "&#9744;";
    }
    ;
  }

  void _Swstring6() {
    if (wat6 == true) {
      _wstring6 = "&#9746;";
    } else {
      _wstring6 = "&#9744;";
    }
    ;
  }

  void _Swstring7() {
    if (wat7 == true) {
      _wstring7 = "&#9746;";
    } else {
      _wstring7 = "&#9744;";
    }
  }

  void _Swstring8() {
    if (wat8 == true) {
      _wstring8 = "&#9746;";
    } else {
      _wstring8 = "&#9744;";
    }
  }

  void _Sostring1() {
    if (ols1 == true) {
      _ostring1 = "&#9746;";
    } else {
      _ostring1 = "&#9744;";
    }
  }

  void _Sostring2() {
    if (ols2 == true) {
      _ostring2 = "&#9746;";
    } else {
      _ostring2 = "&#9744;";
    }
  }

  void _Sostring3() {
    if (ols3 == true) {
      _ostring3 = "&#9746;";
    } else {
      _ostring3 = "&#9744;";
    }
  }

  void _Sostring4() {
    if (ols4 == true) {
      _ostring4 = "&#9746;";
    } else {
      _ostring4 = "&#9744;";
    }
  }
}
