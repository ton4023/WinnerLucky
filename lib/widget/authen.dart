import 'package:flutter/material.dart';
import 'package:winnerlucky/utility/style.dart';

class Authen extends StatefulWidget {
  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  double screen;
  bool scureText = true;
  @override
  Widget build(BuildContext context) {
    screen = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: RadialGradient(
          center: Alignment(0, -0.25),
          radius: 1,
          colors: <Color>[Colors.white60, Style().primaryColor],
        )),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                buildLogo(),
                Style().title1('WINNER LUCKY'),
                buildUsername(),
                buildPassword(),
                buildLogin(),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: buildRegister(),
    );
  }

  Container buildRegister() => Container(
        margin: EdgeInsets.only(top: 20, right: 20),
        child: TextButton(
          onPressed: () => Navigator.pushNamed(context, '/register'),
          child: Text('Register'),
          style: TextButton.styleFrom(primary: Colors.white),
        ),
      );

  Container buildLogin() => Container(
        margin: EdgeInsets.only(top: 20),
        width: screen * 0.75,
        child: ElevatedButton(
          onPressed: () {},
          child: Text('Login'),
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              primary: Style().darkColor),
        ),
      );

  Container buildUsername() => Container(
        decoration: BoxDecoration(
          color: Colors.white54,
          borderRadius: BorderRadius.circular(20),
        ),
        margin: EdgeInsets.only(top: 20),
        width: screen * 0.75,
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.person,
              color: Style().darkColor,
            ),
            hintText: 'Username',
            hintStyle: TextStyle(color: Style().darkColor),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Style().darkColor),
              borderRadius: BorderRadius.circular(20),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Style().lightColor),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      );

  Container buildPassword() => Container(
        decoration: BoxDecoration(
          color: Colors.white54,
          borderRadius: BorderRadius.circular(20),
        ),
        margin: EdgeInsets.only(top: 20),
        width: screen * 0.75,
        child: TextField(
          obscureText: scureText,
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.lock,
              color: Style().darkColor,
            ),
            suffixIcon: IconButton(
              icon: scureText
                  ? Icon(Icons.remove_red_eye)
                  : Icon(Icons.remove_red_eye_outlined),
              onPressed: () {
                setState(() {
                  scureText = !scureText;
                });
              },
            ),
            hintText: 'Password',
            hintStyle: TextStyle(color: Style().darkColor),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Style().darkColor),
              borderRadius: BorderRadius.circular(20),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Style().lightColor),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      );

  Container buildLogo() => Container(
        margin: EdgeInsets.only(top: 20, bottom: 20),
        width: screen * 0.40,
        child: Style().logo(),
      );
}
