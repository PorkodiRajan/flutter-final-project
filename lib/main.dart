import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:groupproject/screen/home/home_page.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:groupproject/splash.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

// void main() => runApp(const GetMaterialApp(home: Splash()));

void main(){
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(MyApp());
}


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    FlutterNativeSplash.remove();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Canada Computers',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:Splash(),
    );

  }
}