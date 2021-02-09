import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:winnerlucky/utility/dialog.dart';
import 'package:winnerlucky/utility/style.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  double screen;
  String name, email, pass;
  @override
  Widget build(BuildContext context) {
    screen = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: buildFloatingActionButton(),
      appBar: AppBar(
        title: Text('New Register'),
      ),
      body: Center(
        child: Column(
          children: [
            buildName(),
            buildMail(),
            buildPass(),
          ],
        ),
      ),
    );
  }

  FloatingActionButton buildFloatingActionButton() {
    return FloatingActionButton(
      onPressed: () {
        if ((name?.isEmpty ?? true) ||
            (email?.isEmpty ?? true) ||
            (pass?.isEmpty ?? true)) {
          normalDialog(context, 'textinput is empty');
        } else {
          Fluttertoast.showToast(msg: 'success');
          Navigator.pop(context, '/authen');
        }
      },
      child: Icon(Icons.cloud_upload),
    );
  }

  Container buildName() => Container(
        decoration: BoxDecoration(
          color: Colors.white54,
          borderRadius: BorderRadius.circular(20),
        ),
        margin: EdgeInsets.only(top: 20),
        width: screen * 0.75,
        child: TextField(
          onChanged: (value) => name = value.trim(),
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.person,
              color: Style().darkColor,
            ),
            hintText: 'Name',
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

  Container buildMail() => Container(
        decoration: BoxDecoration(
          color: Colors.white54,
          borderRadius: BorderRadius.circular(20),
        ),
        margin: EdgeInsets.only(top: 20),
        width: screen * 0.75,
        child: TextField(
          onChanged: (value) => email = value.trim(),
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.email,
              color: Style().darkColor,
            ),
            hintText: 'Email',
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

  Container buildPass() => Container(
        decoration: BoxDecoration(
          color: Colors.white54,
          borderRadius: BorderRadius.circular(20),
        ),
        margin: EdgeInsets.only(top: 20),
        width: screen * 0.75,
        child: TextField(
          onChanged: (value) => pass = value.trim(),
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.lock,
              color: Style().darkColor,
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
}
