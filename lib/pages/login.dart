import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';
import 'package:flutter/material.dart';
import 'package:login/components/textfield.dart';
import 'package:login/pages/signup.dart';

class login extends StatefulWidget {

  const login({super.key,});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {

  TextEditingController Email = TextEditingController();
  TextEditingController Pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // LOGO
            Icon(
                Icons.person,
              size: 200,
              color: Theme.of(context).colorScheme.background,
            ),

            const Text(
              "V I P",
              style: TextStyle(
                fontSize: 26,
              ),
            ),

            SizedBox(height: 45,),

            MyTextfield(hintText: "    email", obsecureText: false, controller: Email),
            SizedBox(height: 16,),
            MyTextfield(hintText: "    passward", obsecureText: true, controller: Pass),

            SizedBox(height: 10,),

            Text("forget password?", style: TextStyle(color: Theme.of(context).colorScheme.secondary),),

            SizedBox(height: 15,),

            // SIGNIN BUTTON::::::::::
            SizedBox(
              height: 60,
              width: 150,
              child: ElevatedButton(
                onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    elevation: 6,
                  ),
                child: Text("Signin", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),)
              ),
            ),

            SizedBox(height: 15,),

            // REGISTER BUTTON::::::::::::
            GestureDetector(
              onTap: runSignup,
                child: Text("register here", style: TextStyle(color: Theme.of(context).colorScheme.secondary),)
            ),

          ],
        ),
      ),
    );
  }
}
