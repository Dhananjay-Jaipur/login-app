import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:login/components/textfield.dart';
import 'package:login/pages/signup.dart';
import 'package:login/pages/homePage.dart';
import 'package:leak_tracker_flutter_testing/leak_tracker_flutter_testing.dart';

class login extends StatefulWidget {

  const login({super.key,});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {

  TextEditingController Email = TextEditingController();
  TextEditingController Pass = TextEditingController();

  void Signin() async{

    // loading....
    showDialog(
        context: context,
        builder: (context) => const Center(
          child: CircularProgressIndicator(),
        ),
    );

    // try sign-in
    try{
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: Email.text, password: Pass.text);
      Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage()));
      if(context.mounted)
        {Navigator.pop(context);}
    }
    on FirebaseAuthException catch(exception) {

      Fluttertoast.showToast(msg: exception.message.toString(),);

      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          backgroundColor: Colors.transparent,
          title: Text(exception.toString(), style: TextStyle(color: Theme.of(context).colorScheme.background,), textAlign: TextAlign.center,),
        ),
      );
    }

    StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot){
          if(snapshot.hasData)
            {
              return Homepage();
            }
          else{
            return signup();
          }
        },
    );
  }

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

            MyTextfield(hintText: "    email", obsecureText: false, c: Email),
            SizedBox(height: 16,),
            MyTextfield(hintText: "    passward", obsecureText: true, c: Pass),

            SizedBox(height: 10,),

            GestureDetector(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => signup()));},
                child: Text("forget password?", style: TextStyle(color: Theme.of(context).colorScheme.secondary),),
            ),

            SizedBox(height: 15,),

            // SIGNIN BUTTON::::::::::
            SizedBox(
              height: 60,
              width: 150,
              child: ElevatedButton(
                onPressed: Signin,
                  style: ElevatedButton.styleFrom(
                    elevation: 6,
                  ),
                child: Text("Signin", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),)
              ),
            ),

            SizedBox(height: 15,),

            // REGISTER BUTTON::::::::::::
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => signup()));
              },
                child: Text("register here", style: TextStyle(color: Theme.of(context).colorScheme.secondary),)
            ),

          ],
        ),
      ),
    );
  }
}
