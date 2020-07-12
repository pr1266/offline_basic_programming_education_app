import 'package:flutter/material.dart';
import 'package:clearn/c/c_content.dart';


class FirstPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FirstPageState();
  }
}

class FirstPageState extends State<FirstPage>{


  List _c_content = [];
  List _cplusplus_content = [];


  @override
  initState(){
    super.initState();
    this._c_content = C_Content().c_content;
    print(this._c_content);
  }

  Widget _createContent_c(){
    return new ListView.builder(
      shrinkWrap: true,
      itemCount: this._c_content.length,
      itemBuilder: (BuildContext context, int index){
        return Container(
          height: 120,
          margin: EdgeInsets.only(left: 10, right: 10, bottom: 10, top: index == 0 ? 10 : 0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color: Color.fromRGBO(207,216,220, 1),
          ),
          child: new Row(
            children: <Widget>[
              new Container(
                alignment: Alignment.centerRight,
                width: MediaQuery.of(context).size.width * .94 - 100,
                child: new Text(
                  _c_content[index]['name'],
                  style: new TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              new Container(
                margin: EdgeInsets.only(left: 20),
              width: 70,
//                color: Colors.green,
                child: new Image.asset(_c_content[index]['image']),
          )
            ],
          ),
        );
      },

    );
  }

  Widget _createContent_cplusplus(){
    return new ListView.builder(
      shrinkWrap: true,
      itemCount: this._cplusplus_content.length,
      itemBuilder: (BuildContext context, int index){
        return Container(

        );
      },

    );
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 2,
      child: new Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [Color.fromRGBO(94,53,177, 1), Color.fromRGBO(3,169,244, 1)],
              )
            ),
          ),
          centerTitle: true,
          title: Text(
            'سختش نکن !',
            textDirection: TextDirection.rtl,
            style: new TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),
          ),
          bottom: TabBar(
            labelStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),
            tabs:
              [
                Tab(text: 'C', ),
                Tab(text: 'C++',),
            ]
          ),
      ),
        body: TabBarView(
          children: <Widget>[
            _createContent_c(),
            _createContent_cplusplus(),
          ],
        ),
    )
    );
  }
}