import 'package:flutter/material.dart';
class SuccessScreen extends StatefulWidget {
  const SuccessScreen({super.key});

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 400,),
            Row(
              children: [
                SizedBox(width: 230,),
       Container(
          height: 90,
          width: 90,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(100),
          ),
            alignment: Alignment.center,
            child:Icon(Icons.check_sharp,size: 50,color: Colors.white,),

          ),
      ]
    ),
         SizedBox(height: 20,),
         Row(
           children: [
             SizedBox(width: 215,),
         Text(
          "You are set!",style: TextStyle(
           fontSize: 20,
           color: Colors.black,
           fontWeight: FontWeight.w700,
         ),
         ),
           ],
         )
      ]
      ),
    );
  }
}

