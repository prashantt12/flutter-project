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

  // creating a form key for validation of the username and password
  final _formKey = GlobalKey<FormState>();

  // function that will handle the navigation and validation of the username and password
  moveToHome(BuildContext context) async {
    if (_formKey.currentState?.validate() ?? true){
      // changing the flag value to "true" to trigger the events when the button is clicked and all the validations are done
      setState(() {
        buttonClicked = true;
      });

      // adding a await call for one second for the animation to get completed and then we will be routed to the homepage
      await Future.delayed(Duration(seconds: 1));

      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        buttonClicked = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      // adding background color
      // color: Colors.white,

      // adding the column inside a SingleChildScrollView such that the screen will adjust for smaller screens
      child: SingleChildScrollView(
        child: Form(
          // adding the form key here to handle validation.
          key: _formKey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/hey.png",
                fit: BoxFit.cover,
              ),

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

                      // adding code for validation of the username
                      validator: (value){
                        if (value?.isEmpty ?? true){
                          return "Username cannot be Empty.";
                        }
                        // returning null here because it signifies that we do not have any validation problem.
                        return null;
                      },

                      // using onChanged that will set the Value of the string on the home page according to the username entered
                      onChanged: (value) {
                        name = value;
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

                      // adding validator for password field
                      validator: (value){
                        if(value?.isEmpty ?? true){
                          return "Password cannot be empty";
                        }
                        else if (value!.length < 6){
                          return "Password length should be atleast 6 characters";
                        }

                        return null;
                      },

                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              // Including the Inkwell Widget inside Material Widget to let animations allow on the login page.
              Material(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular( buttonClicked? 50 : 8),
                // Adding some animations to the Login Button Creating it again
                child: InkWell(
                  // added a function to handle the navigation and validation of input fields.
                  onTap: () => moveToHome(context) ,

                  child: AnimatedContainer(
                    // adding a duration for smooth animation
                    duration: Duration(seconds: 1),
                    height: 50,
                    // conditional expression
                    width: buttonClicked ? 50 : 100,
                    alignment: Alignment.center,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
