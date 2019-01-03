import 'package:flutter/material.dart';

//iteration 2:
/*
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Tech Pack',
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: new HomePage(title: 'Tech pack'),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  // HomePage is the config for the state. It has the info provided by its parent, which is just the title "Tech Pack" here, and the
  // info for the build methods of the state, which is just the name of the state in this case.
  //Think of this class as the middle man between what's running and the state that changes how it looks.
  final String title;

  _Lists createState() => new _Lists();
}

class _Lists extends State<HomePage> {
  int _numLists = 0;

  void _addLists() {
    setState(() {
      _numLists++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: AppBar(
        title: Text(
          'Tech Pack',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: new Center(
        child: Container(

        )
      )
      floatingActionButton: new FloatingActionButton(
          onPressed: _addLists,
          child: Icon(
            Icons.add,
            color: Colors.white,)
        ,
      ),
    );
  }
}

//Just making something that creates the lists I want using the int _numLists to indicate how many there are
*/
//iteration 3:
void main() => runApp(
      new MaterialApp(
        home: new ResponsavelProfilePage(),
      ),
    );

class ResponsavelProfilePage extends StatefulWidget {
  @override
  _ResponsavelProfilePageState createState() =>
      new _ResponsavelProfilePageState();
}

class _ResponsavelProfilePageState extends State<ResponsavelProfilePage> {
  int _count = 1;

  @override
  Widget build(BuildContext context) {
    List<Widget> _contatos =
        new List.generate(_count, (int i) => new ContactRow());

    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Tech Pack"),
        ),
        body: new LayoutBuilder(builder: (context, constraint) {
          return new Center(
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Container(
                  height: 1000,
                  width: 275,
                  margin: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: new ListView(
                    children: _contatos,
                    scrollDirection: Axis.vertical,
                  ),
                ),
                new FloatingActionButton(
                  onPressed: _addNewContactRow,
                  child: new Icon(Icons.add),
                ),
                //new ContactRow()
              ],
            ),
          );
        }));
  }

  void _addNewContactRow() {
    setState(() {
      _count = _count + 1;
    });
  }
}

class ContactRow extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _ContactRow();
}

class _ContactRow extends State<ContactRow> {
  @override
  Widget build(BuildContext context) {
    return new Container(
        width: 50.0,
        padding: new EdgeInsets.all(5.0),
        child: new Column(children: <Widget>[
          new Row(children: <Widget>[
            new Container(
              child: new IconButton(
                  icon: Icon(Icons.arrow_drop_down_circle), onPressed: _dropDown),
            ),
            new Container(
              width: 200.0,
              child: new TextField(
                controller: TextEditingController(text: 'Item List'),
                cursorColor: Colors.lightBlue,
                focusNode: null,
                style: null,
                decoration: new InputDecoration(),
              ),
            ),
          ]
          ),
          new Container( padding: EdgeInsets.symmetric(vertical: 12.0)),
          new Divider(height: 4.0, indent: 2.0, color: Colors.black)
        ]
        )
    );
  }
  void _dropDown() {
    setState()
  }
}
