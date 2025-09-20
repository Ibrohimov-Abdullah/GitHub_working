import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
      Center(
      child: Container(
      height: 200,
        width: 200,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                "https://avatars.mds.yandex.net/i?id=54ea9e4ad79d58cf331eaa771048a0a8f38cd60e-10811696-images-thumbs&n=13",
              ),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(10000)
        ),
      ),
    ),
    SizedBox(height: 20,),
    Container(
    height: 40,
    width: 150,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Colors.black,
    ),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text("Edit Pofile",style: TextStyle(color: Colors.white,fontSize: 22,
    ),
    ),
    ],
    ),
    ),
    SizedBox(height: 66,),
    Container(
    height: 570,
    width: 500,
    decoration: BoxDecoration(
    color: Colors.blue,
    borderRadius: BorderRadius.only(
    topLeft: Radius.circular(40),
    topRight: Radius.circular(40),
    ),
    ),
    child: Padding(
    padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text("Email", style: TextStyle(color: Colors.white, fontSize: 16)),
    SizedBox(height: 5),
    TextField(
    decoration: InputDecoration(
    filled: true,
    fillColor: Colors.white,
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
    ),
    ),
    SizedBox(height: 15),

    Text("Username", style: TextStyle(color: Colors.white, fontSize: 16)),
    SizedBox(height: 5),
    TextField(
    decoration: InputDecoration(
    filled: true,
    fillColor: Colors.white,
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
    ),
    ),
    SizedBox(height: 15),

    Text("Password", style: TextStyle(color: Colors.white, fontSize: 16)),
    SizedBox(height: 5),
    TextField(
    decoration: InputDecoration(
    filled: true,
    fillColor: Colors.white,
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
    ),
    ),
    SizedBox(height: 15),

    Text("Confirm password", style: TextStyle(color: Colors.white, fontSize: 16)),
    SizedBox(height: 5),
    TextField(
    decoration: InputDecoration(
    filled: true,
    fillColor: Colors.white,
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
    ),
    ),
    Spacer(),

    Center(
    child: Container(
    height: 40,
    width: 300,
    decoration: BoxDecoration(
    color: Colors.black,
    borderRadius: BorderRadius.circular(10),
    ),
    child:  Center(
    child: Text(
    "Register",
    style: TextStyle(color: Colors.white, fontSize: 18),
    ),
    ),
    ),
    ),
    ]
    ),
    ),
    )
        ]
      )
    );
  }
}
