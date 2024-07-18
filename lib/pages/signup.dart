import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login/components/textfield.dart';
import 'package:login/pages/login.dart';

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

  void Register() async {

    // authenticate:::
    if (pass.text != conformPass.text) {
      // password don't match
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          backgroundColor: Colors.transparent,
          title: Text("passward don't match", style: TextStyle(color: Theme.of(context).colorScheme.background,),),
        ),
      );
    }

    else{
      // creating user:::
      try {
        UserCredential? credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: Email.text, password: pass.text);
      } on FirebaseAuthException catch (e) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            backgroundColor: Colors.transparent,
            title: Text(e.toString(), style: TextStyle(color: Theme.of(context).colorScheme.background,), textAlign: TextAlign.center,),
          ),
        );
      }
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : true,
      backgroundColor: Theme.of(context).colorScheme.background,

      body: SingleChildScrollView(
      child: Column(

            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              const SizedBox(height: 100,),

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

              SizedBox(
                height: 45,
              ),

              MyTextfield(
                  hintText: "    username",
                  obsecureText: false,
                  c: username),
              SizedBox(
                height: 16,
              ),
              MyTextfield(
                  hintText: "    email",
                  obsecureText: false,
                  c: Email),
              SizedBox(
                height: 16,
              ),
              MyTextfield(
                  hintText: "    passward",
                  obsecureText: true,
                  c: pass),
              SizedBox(
                height: 16,
              ),
              MyTextfield(
                  hintText: "    conform passward",
                  obsecureText: true,
                  c: conformPass),

              SizedBox(
                height: 25,
              ),

              // REGISTER BUTTON:::::::
              SizedBox(
                height: 60,
                width: 150,
                child: ElevatedButton(
                    onPressed: Register,
                    style: ElevatedButton.styleFrom(
                      elevation: 6,
                    ),
                    child: const Text(
                      "Register",
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                    )),
              ),

              SizedBox(
                height: 15,
              ),

              // already have an account:::::
              GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => login()));
                  },
                  child: Text(
                    "already have an account ?",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary),
                  )),
            ],
          ),
        ),
      );
  }
}
