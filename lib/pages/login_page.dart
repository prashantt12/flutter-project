import 'package:flutter/material.dart';
import 'package:flutter_first_version/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

// Converted the LoginPage class to the stateful widget
class _LoginPageState extends State<LoginPage> {
  // Taking a string to store the username that will be entered in the login Page
  String name = "";

  // buttonClicked flag to handle the events after button click
  bool buttonClicked = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      // adding background color
      // color: Colors.white,

      // adding the column inside a SingleChildScrollView such that the screen will adjust for smaller screens
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login.png",
              fit: BoxFit.cover,
              //   to check if the scroll view is working as expected we can test it out by increasing the size of the image, if the SingleChildScrollView was not present then we will be getting an error of "Overflow" so this should be always taken care of.
              //   height: 600,
            ),
            // to give some spacing between the image and the text
            SizedBox(height: 20),
            Text(
              "Welcome $name",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),

            // Fields to enter username and password
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 32.0,
              ),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username",
                      floatingLabelBehavior: FloatingLabelBehavior.auto,
                    ),
                    // using onChanged that will set the Value of the string on the home page according to the username entered
                    onChanged: (value) {
                      name = value;
                      // setState tells Flutter that something has changed and it needs to build the widget Tree ( basically calling the build() function again )
                      setState(() {});
                    },
                  ),

                  SizedBox(height: 10),

                  TextFormField(
                    // hiding the password when we enter
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                      floatingLabelBehavior: FloatingLabelBehavior.auto,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            //  Adding a Login button at the last
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.pushNamed(context, MyRoutes.homeRoute);
            //   },
            //   style: TextButton.styleFrom(
            //     foregroundColor: Colors.purple,
            //     minimumSize: Size(100, 50)
            //   ),
            //
            //   child: Text("login"),
            // )

            // Adding some animations to the Login Button Creating it again
            InkWell(
              onTap: () async {
                // changing the flag value to "true" to trigger the events when the button is clicked
                setState(() {
                  buttonClicked = true;
                });

                // adding a await call for one second for the animation to get completed and then we will be routed to the homepage
                await Future.delayed(Duration(seconds: 1));
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
              child: AnimatedContainer(
                // adding a duration for smooth animation
                duration: Duration(seconds: 1),
                height: 50,
                // conditional expression
                width: buttonClicked ? 50 : 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.deepPurple,

                  // conditional expression
                  borderRadius:
                      buttonClicked
                          ? BorderRadius.circular(50)
                          : BorderRadius.circular(10),
                ),
                child: buttonClicked ? Icon(
                  Icons.done,
                  color: Colors.white,
                ) : Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
