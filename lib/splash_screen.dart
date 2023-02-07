import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() =>InitState();

}

class InitState extends State<SplashScreen>  {
  @override
  Widget build(BuildContext context) {
    return initwdget();
  }
   Widget initwdget(){
    return Scartfold(
      Body:Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: CupertinoColors.systemRed:(0xffF5591F ) ,
      gradient: LinearGradient(
        colors:[(new color (0xffF5591F)) ,(new color (0xffF2861F))],
      )
            ),
          )
        ],
      )
    )
}


}
