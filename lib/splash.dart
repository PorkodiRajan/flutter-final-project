import 'package:flutter/material.dart';
import 'package:groupproject/screen/home/home_page.dart';
import 'dart:async';

class Splash extends StatefulWidget{
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds:3),()=>Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>HomePage())));
  }

  _navigatetohome()async{
    await Future.delayed(Duration(milliseconds: 1500),() {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin:Alignment.topRight,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFFF800B),
              Color(0xFFCE1010),
            ],

          ),
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Image.asset('assets/images/logo.png',
                    height: 300.0,
                    width: 500.0,
                  ),
                  Text("A whole laptop store\n at your fingertips",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),

              // circularProgressIndicator(),

            ]),
      ),

      // body: Center(
      //   child:Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Container(height:100,
      //           width:100,
      //           color:Colors.blue),
      //       Container(
      //       child: Text('Canada Computers',
      //           style:TextStyle(fontSize:24,fontWeight:FontWeight.bold)
      //           )
      //             ),
      //     ],
      //   )
      // )
    );
  }
}