
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ivyleague/screens/camera.dart';
import 'package:ivyleague/screens/login_page.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);


  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.grey[300],
    body: SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.grass,
              color: Colors.green[200],
              size: 100,

            ),
            SizedBox(height: 65),

            //Hello Again!
            Text(
              'Hello!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 48
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Welcome back, We've missed you!",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 50),

            //email textfield
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.green[300],
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Email',
                    hintStyle: TextStyle(color: Colors.grey[200])
                  ),
                ),
              ),
            ),
          ),
            SizedBox(height: 10),
            // password textfield
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green[300],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'New Password',
                      hintStyle: TextStyle(color: Colors.grey[200])
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),

            //re enter pasword
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green[300],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'New Password',
                      hintStyle: TextStyle(color: Colors.grey[200])
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            // sign up button
          InkWell(
            onTap: () {
              Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Camera()),
  );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.teal[200],
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Center(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                    )
                  ),
                ),
              ),
          ),
            SizedBox(height: 25),
            //not a member? register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already Have an Account?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )
                ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const LoginPage()),
  );
                    },
                    child: Text(
                      ' Log In Now', 
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      )
                    ),
                  ),
                 ] 
               ),
              ],
            
              
             )

         ),
        )
      ); 
  }
}