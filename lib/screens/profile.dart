
  
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';


class ProfileTabView extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return Container(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.all(10.0),
          children: <Widget>[
            ListTile(
              onTap: (){},
              leading: Icon(Icons.edit),
              title: Text("My Orders"),
            ),
            ListTile(
              onTap: (){},
              leading: Icon(Icons.favorite_border),
              title:Text("My favorits"),
            ),
            ListTile(
              onTap: (){},
              leading: Icon(Icons.account_balance_wallet),
              title: Text("Payment details"),
            ),
            ListTile(
              onTap: (){
                logout(context);
              },
              leading: Icon(Icons.logout),
              title: Text("Logout")
            ),
          ],
        ),
      );
    }
}
 Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginScreen()));
 }