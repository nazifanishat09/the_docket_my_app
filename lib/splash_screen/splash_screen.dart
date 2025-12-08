import 'package:flutter/material.dart';
import 'package:the_docket_app/home_screen/Home_Screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  NextScreen()async{
    await Future.delayed(Duration(seconds: 2));
    Navigator.pushReplacement(context, MaterialPageRoute(builder:(a)=> HomeScreen()));
  }
  @override
  void initState() {
   NextScreen();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image(image: AssetImage("assets/logo.png")),),
    );
  }
}
