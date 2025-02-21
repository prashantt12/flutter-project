import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_first_version/utils/routes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      // adding background color
      // color: Colors.white,
      
      // adding the column inside a SingleChildScrollView such that the screen will adjust for smaller screens
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/login.png",
              fit: BoxFit.cover,
            //   to check if the scroll view is working as expected we can test it out by increasing the size of the image, if the SingleChildScrollView was not present then we will be getting an error of "Overflow" so this should be always taken care of.
            //   height: 600,
            ),
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

                  SizedBox(
                    height: 10,
                  ),
        
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
        
          //   Adding a Login button at the last
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.purple,
                minimumSize: Size(100, 50)
              ),
        
              child: Text("login"),
            )
          ],
        ),
      )
    );
  }
}
