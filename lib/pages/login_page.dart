import 'dart:io';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      // adding background color
      // color: Colors.white,
      // adding image to the Login page on the column-axis
      child: Column(
        children: [
          Image.asset("assets/images/login.png", fit: BoxFit.cover,),
          // to give some spacing between the image and the text
          SizedBox(
            height: 20,
          ),
          Text(
            "Login",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),

          // Fields to enter username and password
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: Column(
              children: [
                TextFormField(decoration: InputDecoration(
                  hintText: "Enter Username",
                  labelText: "Username",
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                ),),

                TextFormField(
                  // hiding the password when we enter
                  obscureText: true,
                  decoration: InputDecoration(
                  hintText: "Enter Password",
                  labelText: "Password",
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                ),)
              ],
            ),
          ),

          SizedBox(
            height: 20,
          ),

        //   Adding a Signin button at the last
          ElevatedButton(
            onPressed: () {
              print("Button pressed!");
            },
            style: TextButton.styleFrom(
              foregroundColor: Colors.purple,
            ),

            child: Text("login"),
          )
        ],
      )
    );
  }
}
