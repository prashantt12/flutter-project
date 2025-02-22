import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// a class to handle the drawer components in the app
class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {

    final imageUrl = "https://media.licdn.com/dms/image/v2/D4D03AQE1tNyty47U0Q/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1698921955534?e=2147483647&v=beta&t=kQ1ZpgyvlWm03Wkb_cGRINk_ho0L4T5AS9d0f18R31M";

    return Drawer(
      child: Container(
        color: Colors.white,
        child: ListView(
          // added this padding to handle the spaces in android devices
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Prashant Tanwar"),
                accountEmail: Text("personalprashant26@gmail.com"),

                // just normally using the image ( it will come in a square like box )
                // currentAccountPicture: Image.network(imageUrl),

                // if is want to put the image in a circle to make it look more good
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            ListTile(
              // using sized box to handle some misalignment of icon and text
              leading: SizedBox(
                width: 30,
                child: Icon(CupertinoIcons.home, size: 20,),),
              title: Text("Home"),
            ),

            ListTile(
              // using sized box to handle some misalignment of icon and text
              leading: SizedBox(
                width: 30,
                child: Icon(CupertinoIcons.profile_circled, size: 20,),),
              title: Text("Profile"),
            ),

            ListTile(
              // using sized box to handle some misalignment of icon and text
              leading: SizedBox(
                width: 30,
                child: Icon(CupertinoIcons.ant, size: 20,),),
              title: Text("Ant"),
            )
          ],
        ),
      ),
    );
  }
}
