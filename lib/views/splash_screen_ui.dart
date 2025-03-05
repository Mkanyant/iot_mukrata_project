import 'package:flutter/material.dart';
import 'package:iot_mukrata_project/views/home_ui.dart';

class SplashScreenUi extends StatefulWidget {
  const SplashScreenUi({super.key});

  @override
  State<SplashScreenUi> createState() => _SplashScreenUiState();
}

class _SplashScreenUiState extends State<SplashScreenUi> {

  @override
  void initState(){
    //โค๊ด splash Screen
    Future.delayed(
      //ระยะเวลาที่หน่วง
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomeUi(),
        ),
      ),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                'assets/images/logo.png',
                //width: 250.0,
                width: MediaQuery.of(context).size.width * 0.65,
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            CircularProgressIndicator(
              color: Colors.white,
            ),
            SizedBox(
              height: 50.0,
            ),
            Text(
              'Tech SAU BUFFET',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Text(
              'Copyright © 2025 by Mint',
              style: TextStyle(
                color: Colors.white,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
