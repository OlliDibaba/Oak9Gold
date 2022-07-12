// ignore_for_file: non_constant_identifier_names, use_function_type_syntax_for_parameters, prefer_equal_for_default_values, prefer_const_constructors, must_be_immutable, dead_code, empty_statements

import 'package:flutter/material.dart';

class StartingPage extends StatelessWidget {
  const StartingPage({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
    image: DecorationImage(
        image: AssetImage("assets/images/background.jpg"), 
        fit: BoxFit.cover),
  ),constraints: const BoxConstraints.expand(), 
    );
    Padding(
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
              );
  }
}