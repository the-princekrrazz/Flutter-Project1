import 'package:flutter/material.dart';
import 'package:loginpref/main.dart';
class HomePage extends StatelessWidget{
  var Names=[
    "Prince",
    "Julie",
    "Mukesh",
    "Gaurav",
    "Sahil",
    "Rakesh",
    "Vivek",
    "Kumar",
    "Akash",
    "Siddarth"
  ];
  var Numbers=2341232345;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Chats"),),
      automaticallyImplyLeading: false,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.blue.withOpacity(0.2),
        child:ListView(
          children: Names.map((name) {
            return Container(
              height: 120,
              decoration: BoxDecoration(
                color: Colors.red.withOpacity(0.5),
                borderRadius: BorderRadius.circular(5),
                border: Border.all(width: 2,color: Colors.black)
              ),
              margin: EdgeInsets.all(5.0),
              width: double.infinity,
              child: SingleChildScrollView(
                child: ListTile(
                  leading: Icon(Icons.account_circle,size: 75,),
                  subtitle: Text("64646464",style: TextStyle(fontSize: 20),),
                  title: Text(name,style: TextStyle(fontSize: 25,),),
                  trailing: Icon(Icons.mark_email_read),
                ),
              ),
            );
          }).toList()
        )
        ),
    );
  }
}