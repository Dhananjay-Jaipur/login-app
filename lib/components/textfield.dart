import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {

  final String hintText;
  final bool obsecureText;
  final TextEditingController controller;

  // required - parameter must be passed when calling the function
  // use we do not initialize
  const MyTextfield({
    super.key,
    required this.hintText,
    required this.obsecureText,
    required this.controller,
  });


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20,),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Theme.of(context).colorScheme.background,
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(33),
          ),
        ),
        obscureText: obsecureText,
      ),
    );
  }
}
