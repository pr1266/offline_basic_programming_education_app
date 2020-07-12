import 'package:flutter/material.dart';
import 'package:clearn/first_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: new Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white
        ),
        child: new ListView(
          children: <Widget>[
            new Container(
              height: 150,
            ),
            new Container(
              child: new Text(
                'به Clearn خوش آمدید !',
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
                style: new TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
            ),
            new Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
              child: new ListView(
                shrinkWrap: true,
                children: <Widget>[
                  new Container(
                    height: MediaQuery.of(context).size.height * .15,
//                    color: Colors.teal,
                    child: new Row(
//                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Container(
                          margin: EdgeInsets.only(left: 40),
//                    color: Colors.amber,
                          height: MediaQuery.of(context).size.height * .2,
                          width: MediaQuery.of(context).size.width * .4,
                          child: Image.asset(
                              'assets/images/c.png'
                          ),
                        ),
                        new Container(
//                    color: Colors.amber,
                          margin: EdgeInsets.only(right: 40),
                          height: MediaQuery.of(context).size.height * .2,
                          width: MediaQuery.of(context).size.width * .4,
                          child: Image.asset(
                              'assets/images/cplus.png'
                          ),
                        ),
                      ],
                    ),
                  ),
                  new Container(
//              color: Colors.black,
                    height: 120,
//                    color: Colors.amber,
                    child: new Image.asset('assets/images/smile.png'),
                  ),
                ],
              ),
            ),
            new Container(
              height: 40,
            ),
            new GestureDetector(
              onTap: (){
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => FirstPage()));
              },
              child: new Container(
                height: 100,
                margin: EdgeInsets.only(left: 60, right: 60, top: 20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [Color.fromRGBO(94,53,177, 1), Color.fromRGBO(3,169,244, 1)],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(15))
                ),
                alignment: Alignment.center,
                child: new Text(
                  'بزن بریم !',
                  textDirection: TextDirection.rtl,
                  style: new TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25
                  ),
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}