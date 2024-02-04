import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginpref/Welcome.dart';

class SignUp extends StatelessWidget{
  var name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return(
    Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text("Sign Up"),
        ),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.person,size: 100,color: Colors.orange,),
                SizedBox(height: 11,),
                TextField(
                  decoration: InputDecoration(
                    label: Text("Enter your Email"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                    ),
                  ),
                ),
                SizedBox(height: 11,),
                TextField(
                  controller: name,
                  decoration: InputDecoration(
                    label: Text("Enter Your name"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                    ),
                  ),
                ),
                SizedBox(height: 11,),
                TextField(
                  decoration: InputDecoration(
                    label: Text("Phone No."),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                    ),
                  ),
                ),
                SizedBox(height: 11,),
                TextField(
                  decoration: InputDecoration(
                    label: Text("Password"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                    ),
                  ),
                ),
                SizedBox(height: 11,),
                ElevatedButton(onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>Welcome(name.text.toString())));
                },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.orange)
                    )
                    , child: Text("Sing Up"))
              ],
            ),
          ),
        ),
      ),

    )
    );
  }
}