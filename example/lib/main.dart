import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: myapp(),
        title: "MiFirstProgramm",
    );
  }
}
class myapp extends StatefulWidget {
  @override
  _myappState createState() => _myappState();
}

class _myappState extends State<myapp> {

  int _count;
  Color _colors;
  String _string;
   List<FloatingActionButtonLocation>  ListLocation = [FloatingActionButtonLocation.centerDocked,FloatingActionButtonLocation.centerFloat,
    FloatingActionButtonLocation.endDocked,FloatingActionButtonLocation.endFloat,FloatingActionButtonLocation.endTop,
    FloatingActionButtonLocation.miniStartTop,FloatingActionButtonLocation.startTop];
  FloatingActionButtonLocation _buttonLocation;

  @override
  void initState() {
    // TODO: implement initState
    _string="Randomize color";
    _count=0;
    _colors = Colors.white;
    _buttonLocation = ListLocation[0];
    super.initState();
  }

  @override
  void setState(fn) {
    // TODO: implement setState
    switch(_count)
    {
      case 1 :
        _string="Ha, tap on me Now";
        _buttonLocation= ListLocation.elementAt(Random().nextInt(ListLocation.length));
        break;
      case 2 :
        _string="How?";
        _buttonLocation= ListLocation.elementAt(Random().nextInt(ListLocation.length));
        break;
      case 3 :
        _string = "How are you doing this?";
        _buttonLocation= ListLocation.elementAt(Random().nextInt(ListLocation.length));
        break;
      case  4:
        _string = "OH MY GOD!";
        _buttonLocation= ListLocation.elementAt(Random().nextInt(ListLocation.length));
        break;
      case 5:
        _string="Enough! I'm over it";
        _buttonLocation= ListLocation.elementAt(Random().nextInt(ListLocation.length));
        break;
      default:
        _string="Randomize color";
        _buttonLocation=ListLocation[0];
    }
    _colors = Colors.primaries[Random().nextInt(Colors.primaries.length)];
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: new Text("You tap on the button $_count"),),
      backgroundColor: _colors,
      floatingActionButton: new RaisedButton(

        onPressed: () => setState(() =>_count++),
        child: new Text(_string),color: Colors.white,),
      floatingActionButtonLocation: _buttonLocation,);
  }
}
