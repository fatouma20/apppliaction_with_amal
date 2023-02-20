import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home>{

  Widget buildCompetence(){

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [
        const Text(
          'Compétance',
          style: TextStyle(
              color: Colors.white70,
              fontSize:40,
              fontWeight: FontWeight.bold
          ),
        ),

        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                const BoxShadow(
                    color: Colors.black,
                    blurRadius: 6,
                    offset: Offset(0, 2)
                )
              ]


          ),
          height: 60,
          child: TextFormField(
            keyboardType:TextInputType.text,
            style: const TextStyle(
                color: Colors.black
            ),
            decoration: const InputDecoration(
                border: InputBorder.none ,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.hardware,
                  color: Color(0xffb784a7),
                ),
                hintText: 'Compétence',
                hintStyle: TextStyle(
                    color: Colors.black38
                )


            ),
          ),
        ),
      ],
    );
  }
  Widget buildTypedeTravail(){


    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [
        const Text(
          'Type de travail',
          style: TextStyle(
              color: Colors.white70,
              fontSize:40,
              fontWeight: FontWeight.bold
          ),
        ),

        Container(
          alignment: Alignment.centerLeft,
          decoration:BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                const BoxShadow(
                    color: Colors.black,
                    blurRadius: 6,
                    offset: Offset(0, 2)
                )
              ]


          ),
          height: 60,
          child:TextFormField(
            style: const TextStyle(
                color: Colors.black
            ),
            decoration:  const InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.work,
                  color: Color(0xffb784a7),
                ),
                hintText: 'Type de Travail',
                hintStyle: TextStyle(
                    color: Colors.black38
                )

            ),
          ),
        )

      ],
    );
  }
  Widget buildRegion(){

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [
        const Text(
          'Région',
          style: TextStyle(
              color: Colors.white70,
              fontSize:40,
              fontWeight: FontWeight.bold
          ),
        ),

        Container(
          alignment: Alignment.centerLeft,
          decoration:BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                const BoxShadow(
                    color: Colors.black,
                    blurRadius: 6,
                    offset: Offset(0, 2)
                )
              ]
    ),


          height: 60,

          child:TextFormField(
            keyboardType:TextInputType.text,
            style: const TextStyle(
                color: Colors.black
            ),
            decoration:  const InputDecoration(
                border: InputBorder.none,

                prefixIcon: Icon(
                  Icons.maps_home_work,
                  color: Color(0xffb784a7),
                ),
                hintText: 'Région',
                hintStyle: TextStyle(
                    color: Colors.black38
                )

            ),
          ),
        )

      ],
    );
  }
  Widget buildRechercheBtn(){
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      width : 150,
      height: 100,
    child:

      ElevatedButton(
        onPressed: () {
          Navigator.of(context).pop();

        },
        style: ElevatedButton.styleFrom(
          primary: Colors.blueGrey,
          onPrimary: Colors.white,
          side: BorderSide(color: Colors.white54, width: 5),
        ),
        child: const Text(
          'Rechercher',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          )
          ,),
      ),
    );
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: GestureDetector(
            child:Stack(
              children:<Widget>[
                Container(
                  height: double.infinity,
                  width : double.infinity,
                  decoration:const BoxDecoration(
                    gradient:LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors:[
                          Color(0xffcd96cd),
                          Color(0xffe5e4e2),
                          Color(0xffe5e4e2),
                          Color(0xffcd96cd),]
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        'Espace Développeur',
                        style:TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 50),
                      buildCompetence(),
                      const SizedBox(height: 50),

                      buildTypedeTravail() ,
                      const SizedBox(height: 50),

                      buildRegion(),

                      const SizedBox(height: 30),

                      buildRechercheBtn(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}