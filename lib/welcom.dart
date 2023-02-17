
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class welcom extends StatefulWidget {
  const welcom({super.key});

  @override
  welcomState createState() => welcomState();

}
class welcomState extends State<welcom>{
  @override

  Widget build (BuildContext context){
    return initWiddget();
  }
 Widget initWiddget(){
    return Scaffold(
     body:Stack(
        children:[
          Container(
            height: double.infinity,
            width : double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffda70d6),
              gradient: LinearGradient(
                colors: [new Color(0xfffdc1c5), new Color(0xffda70d6),],
                begin: Alignment.topCenter,
                end:Alignment.bottomCenter
              )
            ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

             children:  <Widget>[
               Center(

                   child:  CircularPercentIndicator(
                   animation: true,
                     radius:200,
                     lineWidth:20,
                    percent:0.4,
                   progressColor: Colors.purpleAccent,
                     backgroundColor:Colors.white60,
                     circularStrokeCap: CircularStrokeCap.round,
                   center: const Text('40%',style: TextStyle(fontSize: 40,color: Colors.white),),
                 ),
               ),
               const Text(
             'DevWork',
             style:TextStyle(
             color: Colors.white54,
             fontSize: 40,
           fontWeight: FontWeight.bold,
      ),
    ),

             ],

          ),

   ),

   ],
   ),

    );

 }
}