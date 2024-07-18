import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:login/firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class Homepage extends StatelessWidget {
   Homepage({super.key});

   // current login user ::::::
   final User? currentUser = FirebaseAuth.instance.currentUser;

   // to fetch user detail :::::
   Future<DocumentSnapshot<Map<String, dynamic>>> getUser() async{
     return await FirebaseFirestore.instance
         .collection("user")
         .doc(currentUser!.email)
         .get();
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,

      body: Center(
        child: FutureBuilder<DocumentSnapshot<Map<String, dynamic>>> (
            future: getUser(),
            builder: (context, snapshot){

              if(snapshot.hasError)
                {return Text("ERROR: ${snapshot.error}");}

               if (snapshot.hasData) {
              Map<String, dynamic>? user = snapshot.data!.data();
              return Center(
                child: Column(
                  children: [

                      const Icon(
                        Icons.adb,
                        size: 100,
                      ),

                    Text(
                      user!["username"],
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 33,
                          color: Theme.of(context).colorScheme.primary),
                    ),

                    Text(
                      user!["email"],
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: Theme.of(context).colorScheme.secondary),
                    ),


                  ],
                ),
              );
            }
              else{
                return const Text("ERROR:");
              }
            },
        ),
      ),
    );
  }

}
