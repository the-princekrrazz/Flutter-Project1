import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginpref/main.dart';

class Welcome extends StatelessWidget{
  var Name;
  Welcome(this.Name);
  @override
  Widget build(BuildContext context) {
    return(
    Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(child: Text("Welcome!"),),

      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.check_circle,size: 100,color: Colors.green),
              SizedBox(height: 11,),
              Card(

                child: Text("Welcome $Name you have registered Successfully!",
                  style: TextStyle(fontSize: 22,color: Colors.black,),),
              ),
              ElevatedButton(onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>MyHomePage(title: "Login")));
              },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.greenAccent)
                  ),
                  child: Text("Login")),
            ],
          ),
        ),
      ),
    )
    );
  }
}