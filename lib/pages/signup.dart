import 'package:flutter/material.dart';
import 'package:login/components/textfield.dart';
import 'package:login/pages/login.dart';

void runSignup(){
  runApp(const signup());
}

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {

  TextEditingController Email = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController conformPass = TextEditingController();

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

            MyTextfield(hintText: "    username", obsecureText: false, controller: username),
            SizedBox(height: 16,),
            MyTextfield(hintText: "    email", obsecureText: false, controller: Email),
            SizedBox(height: 16,),
            MyTextfield(hintText: "    passward", obsecureText: true, controller: pass),
            SizedBox(height: 16,),
            MyTextfield(hintText: "    conform passward", obsecureText: true, controller: conformPass),

            SizedBox(height: 15,),

            // REGISTER BUTTON:::::::
            SizedBox(
              height: 60,
              width: 150,
              child: ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    elevation: 6,
                  ),
                  child: Text("Register", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),)
              ),
            ),

            SizedBox(height: 15,),

            // already have an account:::::
            GestureDetector(
                onTap: (){},
                child: Text("already have an account ?", style: TextStyle(color: Theme.of(context).colorScheme.secondary),)
            ),

          ],
        ),
      ),
    );
  }
}
