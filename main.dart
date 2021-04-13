import 'package:flutter/material.dart';
void main()=> runApp(MaterialApp(
 home: appHome(),
));

class appHome extends StatefulWidget {
  @override
  _appHomeState createState() => _appHomeState();
}

class _appHomeState extends State<appHome> {

  int plrLevel= 0;


  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("appBar"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,


      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            plrLevel +=1;
          });
        },
        child:Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images.png'),
                radius: 40.0,

              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),

            Text(
          'NAME',
        style: TextStyle(
          color: Colors.grey,
          letterSpacing: 2.0,
        ),
      ),
            SizedBox(height: 10.0),
            Text(
                'Adrian Rotarasu',
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
            ),
            SizedBox(height: 30.0),
            Text(
              'Curent lvl: ',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '$plrLevel',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 30.0),
            Row(
            children: <Widget>[
              Icon(
              Icons.email,
                color: Colors.grey[400],

            ),
            Text(
              'adrian.rotarasu@yahoo.com',
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 18.0,
                letterSpacing: 1.0,
              ),
            ),
                ],
            ),
      ],
      ),
      ),
    );
  }
}


