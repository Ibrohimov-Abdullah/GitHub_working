import 'package:flutter/material.dart';

class Reset_Password extends StatelessWidget {
  const Reset_Password({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        backgroundColor: Colors.white,
        actions: [
      Row(
      children: [
    MaterialButton(
          height: 50,
      onPressed: () {
            Navigator.pop(context);
          },
        ),
         SizedBox(width: 100,),
         Text("Reset Password",style:
        TextStyle(fontSize: 20,),),

        ]
    ),
          Spacer()
    ]
    ),
      backgroundColor: Colors.white,
      body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 50,),
        Row(
          children: [
            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    hint: Text(
                      "New Password",
                      style: TextStyle(color: Colors.grey),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
SizedBox(height: 20,),
        Row(
          children: [
            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    hint: Text(
                      "Retype new password",
                      style: TextStyle(color: Colors.grey),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      SizedBox(height: 50,),
      Container(
        height: 50,
        width: 468,
        decoration: BoxDecoration(
          color: Colors.deepPurpleAccent,
          borderRadius: BorderRadius.circular(18)
        ),
    alignment: Alignment.center,
    child: Text(
    "Continue",
    style: TextStyle(
    fontSize: 20,
    color: Colors.white,
          )
         )
        )
    ],
    )
    );
  }
}

