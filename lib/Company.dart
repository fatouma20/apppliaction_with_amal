import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class Company extends StatefulWidget {
  const Company({super.key});

  @override
  CompanyState createState() => CompanyState();
}

class CompanyState extends State<Company> {




  Widget buildCompany() {

    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'Name Company',
            style: TextStyle(
                color: Colors.white70,
                fontSize: 27,
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
                  hintText: 'Exp:eNano-Tech',
                  hintStyle: TextStyle(
                      color: Colors.black38
                  )
              ),

            ),
          )
        ]
    );
  }

  Widget buildDescription() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Description',
          style: TextStyle(
              color: Colors.white70,
              fontSize: 27,
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
            style: const TextStyle(
                color: Colors.black
            ),
            decoration: const InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.work,
                  color: Color(0xffb784a7),
                ),
                hintText: 'Description about job ',
                hintStyle: TextStyle(
                    color: Colors.black38
                )

            ),
          ),
        )

      ],
    );
  }

  Widget buildContactdetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Contactdetails',
          style: TextStyle(
              color: Colors.white70,
              fontSize: 27,
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
            keyboardType: TextInputType.text,
            style: const TextStyle(
                color: Colors.black
            ),
            decoration: const InputDecoration(
                border: InputBorder.none,

                prefixIcon: Icon(
                  Icons.maps_home_work,
                  color: Color(0xffb784a7),
                ),
                hintText: 'Email & Place',
                hintStyle: TextStyle(
                    color: Colors.black38
                )

            ),
          ),
        )

      ],
    );
  }




  Widget buildWorkType() {
    String initValue = 'Work Type';
    var items = [
      'select Work Type',
      'CDD',
      'CDI',
      'FREELANCE',
      'STAGE PRE-EMBAUCHE',
    ];
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'Work Type',
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



  Widget buildAddBtn() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      width: 150,
      height: 100,
      child:

      ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: Colors.purple,
          onPrimary: Colors.white,
          side: BorderSide(color: Colors.purple, width: 5),
        ),
        child: const Text(
          'Add',
          style: TextStyle(fontSize: 20),),


      ),


    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: GestureDetector(
            child: Stack(
              children: <Widget>[
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xffcd96cd),
                          Color(0xffe5e4e2),
                          Color(0xffe5e4e2),
                          Color(0xffcd96cd),
                        ]
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        'Company Space',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 30),
                      buildCompany(),
                      const SizedBox(height: 30),
                      buildDescription(),
                      const SizedBox(height: 30),
                      buildContactdetails(),
                      const SizedBox(height: 30),
                      buildWorkType(),
                      const SizedBox(height: 30),
                      buildSkills(),

                      const SizedBox(height: 30),
                      buildAddBtn(),
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