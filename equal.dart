import 'package:flutter/material.dart';
import 'Button.dart';
class MyApp extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  String s = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text('Calculator',
              style: TextStyle(backgroundColor: Colors.blue, fontSize: 25,
                  fontWeight: FontWeight.bold),),),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(s,
                  style: TextStyle(color: Colors.blue)),

              Expanded(
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    button1(text: '1', function: () {
                      setState(() {
                        s += '1 ';
                      });
                    }),
                    button1(text: '2', function: () {
                      setState(() {
                        s += '2 ';
                      });
                    }),
                    button1(text: '3', function: () {
                      setState(() {
                        s += '3 ';
                      });
                    })
                  ],
                ),
              ),
              Expanded(
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    button1(text: '4', function: () {
                      setState(() {
                        s += '4 ';
                      });
                    }),
                    button1(text: '5', function: () {
                      setState(() {
                        s += '5 ';
                      });
                    }),
                    button1(text: '6', function: () {
                      setState(() {
                        s += '6 ';
                      });
                    }),

                  ],),
              ),

              Expanded(
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    button1(text: '7', function: () {
                      setState(() {
                        s += '7 ';
                      });
                    }),
                    button1(text: '8', function: () {
                      setState(() {
                        s += '8 ';
                      });
                    }),
                    button1(text: '9', function: () {
                      setState(() {
                        s += '9 ';
                      });
                    }),

                  ],),
              ),

              Expanded(
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    button1(text: '+', function: () {
                      setState(() {
                        s += '+ ';
                      });
                    }),
                    button1(text: '-', function: () {
                      setState(() {
                        s += '- ';
                      });
                    }),
                    button1(text: '*', function: () {
                      setState(() {
                        s += '* ';
                      });
                    }),

                  ],),
              ),

              Expanded(
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    button1(text: '0', function: () {
                      setState(() {
                        s += '0';
                      });
                    }),
                    button1(text: 'del', function: () {
                      setState(() {
                        s= '';
                      });
                    }),
                    button1(text: '/', function: () {
                      setState(() {
                        s += '/ ';
                      });
                    }),
                    button1(text: '=',
                        function: () {
                      List r= s.split(' ');
                      int result=int.parse(r[0]);
                      for(int i=1;i<r.length;i+=2){
                        if(r[i]=='+')
                          result+=int.parse(r[i+1]);
                          else if(r[i]=='-')
                            result-=int.parse(r[i+1]);
                        else if(r[i]=='*')
                          result*=int.parse(r[i+1]);
                        else if(r[i]=='/')
                          result~/=int.parse(r[i+1]);
                      }
                      setState(() {
                        s=result.toString();

                      });
                    }),
                  ],),
              ),
            ],
          ),
          backgroundColor: Colors.white);
  }
}