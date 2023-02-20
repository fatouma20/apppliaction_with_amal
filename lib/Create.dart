import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Create extends StatefulWidget {


  @override
  CreateState createState() => CreateState();
}

class CreateState extends State<Create>{
  Widget Name(){

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [
        const Text(
          'Name',
          style: TextStyle(
              color: Colors.white70,
              fontSize:40,
              fontWeight: FontWeight.bold
          ),
        ),

        Container(

          alignment: Alignment.centerLeft,
          decoration:  BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),
              boxShadow: [
                BoxShadow(
                    color: Colors.black,
                    blurRadius: 6,
                    offset: Offset(0, 2)
                )
              ]
          ),
          height: 60,
          child: TextFormField(
            keyboardType:TextInputType.emailAddress,
            style: const TextStyle(
                color: Colors.black
            ),
            decoration: const InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.person,
                  color: Color(0xffb784a7),
                ),
                hintText:'Name',
                hintStyle: TextStyle(
                    color: Colors.black38
                )

            ),
          ),
        )

      ],
    );
  }
  Widget date_of_birth(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [
        TextButton(onPressed:(){
          showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(1980),
              lastDate: DateTime(2011));},
            child:const Text(
              'Date of Birth',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
    ), ),  ),

        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black,
                    blurRadius: 6,
                    offset: Offset(0, 2)
                ),],),

        height: 60,
    child: TextFormField(

          keyboardType:TextInputType.text,
          style: const TextStyle(
              color: Colors.black
          ),
          decoration:  const InputDecoration(
              border: InputBorder.none,

              prefixIcon: Icon(
                Icons.date_range_outlined,
                color: Color(0xffb784a7),
              ),
              hintText: 'date of Birth',
              hintStyle: TextStyle(
                  color: Colors.black38
              )

          ),
        ),
        ),],

    );
  }
  Widget contact(){


    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [
        const Text(
          'Contact',
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
              borderRadius: BorderRadius.circular(100),

              boxShadow: const [
                BoxShadow(
                    color: Colors.black,
                    blurRadius: 6,
                    offset: Offset(0, 2)
                )
              ]


          ),
          height: 60,
          child: TextFormField(

            style: const TextStyle(
                color: Colors.black
            ),
            decoration: const InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.phone_android,
                  color: Color(0xffb784a7),
                ),
                hintText:'Telphone',
                hintStyle: TextStyle(
                    color: Colors.black38
                )

            ),
          ),
        )

      ],
    );
  }
  Widget buildSkills() {
    String initValue = 'skills item';
    var items = [
      'select skills',
      'flutter',
      'Laravel',
      'Angular',
      'React JS',
      'Java',
    ];
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'Skills',
            style: TextStyle(
                color: Colors.white70,
                fontSize: 27,
                fontWeight: FontWeight.bold
            ),
          ),

          Container(height:60,
            width: 500,
            child: Column(
              children: [DropdownButton(

                // Initial Value
                value: items[0],

                // Down Arrow Icon
                icon:  Icon(Icons.keyboard_arrow_down),

                // Array list of items
                items: items.map((item)
                {
                  return DropdownMenuItem(
                    value: item,
                    child: Text(item),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                  setState(() {
                    initValue = newValue!;

                  });
                },
              ),
              ],
            ),


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
            //     height: 60,
            //
            //
            //     child: TextFormField(
            //       keyboardType: TextInputType.text,
            //       style: const TextStyle(
            //           color: Colors.black
            //       ),
            //       decoration: const InputDecoration(
            //           border: InputBorder.none,
            //
            //           prefixIcon: Icon(
            //             Icons.maps_home_work,
            //             color: Color(0xffb784a7),
            //           ),
            //           hintText: 'Flutter / Laravel / Angular /',
            //           hintStyle: TextStyle(
            //               color: Colors.black38
            //           )
            //
          ),
        ]
      //),
      //]
    );
  }
  Widget buildLoginBtn() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      width : 150,
      height: 100,
      child: ElevatedButton(
          onPressed:() {
            print("Create Pressed");
            Navigator.pushNamed(context, '/second');

          },
          style: ElevatedButton.styleFrom(
            primary: Colors.blueGrey,
            onPrimary: Colors.white,
            side: const BorderSide(color: Colors.white54, width: 5),
          ),
          child: const Text(
            'Create',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          )

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
                        'Create accounte',
                        style:TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 50),
                      Name(),
                      const SizedBox(height: 50),

                      date_of_birth() ,
                      const SizedBox(height: 30),
                      contact(),

                      const SizedBox(height: 30),
                      buildSkills(),
                      buildLoginBtn(),
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