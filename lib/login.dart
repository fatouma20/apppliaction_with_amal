import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Login extends StatefulWidget {
const Login({super.key});

@override
_LoginState createState() => _LoginState();

}
class _LoginState extends State<Login>{
bool isRemenberMe= false;
Widget _emailField(){

return Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: <Widget> [
const Text(
'Email',
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
Icons.email,
color: Color(0xffb784a7),
),
hintText:'Email',
hintStyle: TextStyle(
color: Colors.black38
)

),
),
)

],
);
}
Widget buildPassword(){


return Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: <Widget> [
const Text(
'Password',
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
obscureText: true,
style: const TextStyle(
color: Colors.black
),
decoration: const InputDecoration(
border: InputBorder.none,
contentPadding: EdgeInsets.only(top: 14),
  suffixIcon: Icon(
    Icons.visibility_off,
  color: Color(0xffb784a7),
   ),
  prefixIcon: Icon(
Icons.lock,
color: Color(0xffb784a7),
),
hintText:'Password',
hintStyle: TextStyle(
color: Colors.black38
),

),
),
)

],
);
}
Widget buildRememberCb(){

return Container(
height: 20,
child: Row(
children:<Widget>[
Theme(
data:ThemeData(unselectedWidgetColor: Colors.white ),
child: Checkbox(
value: isRemenberMe,
checkColor: Colors.cyan,
activeColor: Colors.white,
onChanged: (value){
setState(() {
isRemenberMe= value!;
});
}),
),
const Text(
'Remember me',
style:TextStyle(
color: Colors.white,
fontWeight: FontWeight.bold,
),
),
],
),
);
}
Widget buildSignUpBtn(){
return GestureDetector(
onTap: () => print("sign up pressed"),
child: RichText(
text:const TextSpan(
children: [
 TextSpan (text:"don\'t have an Account ?  ",
style: TextStyle(
color: Colors.white,
fontSize: 18,
fontWeight: FontWeight.w500
),
),
TextSpan(

text:'sign up',
style: TextStyle(
color: Colors.white,
fontSize: 18,
fontWeight: FontWeight.bold
),
),

],
),
),
);
}

Widget buildLoginBtn() {
return Container(
padding: const EdgeInsets.symmetric(vertical: 20),
width : 150,
height: 100,
child: ElevatedButton(
onPressed:() {
print("Login Pressed");
Navigator.pushNamed(context, '/second');
},
style: ElevatedButton.styleFrom(
primary: Colors.blueGrey,
onPrimary: Colors.white,
side: const BorderSide(color: Colors.white54, width: 5),
),
child: const Text(
'login',
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
'Sign In',
style:TextStyle(
color: Colors.white,
fontSize: 40,
fontWeight: FontWeight.bold,
),
),

const SizedBox(height: 50),
_emailField(),
const SizedBox(height: 50),

buildPassword() ,
const SizedBox(height: 30),
buildRememberCb(),

const SizedBox(height: 30),
buildLoginBtn(),
buildSignUpBtn(),
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