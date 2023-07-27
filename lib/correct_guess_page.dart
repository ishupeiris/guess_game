import 'package:flutter/material.dart';
import 'package:new_game/home_page.dart';

class CorrectGuessPage extends StatelessWidget {
  final int randomNumber;
  CorrectGuessPage({required this.randomNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        title: Center(child: Text('Guess Game')),
      ),
      body: Container(
        padding: EdgeInsets.all(35),
        child: Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Yes! You guessed it right. My scret number is',style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold,color: Colors.black54),),
              SizedBox(
                height: 20,
              ),
              Text("$randomNumber",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black54),),

              SizedBox(
                height: 50,
              ),

              ElevatedButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>HomePage(),
                ),
                );
              }, child: Text('Start the Game Again'),),
            ],
          ),
        ),
      ),
    );
  }
}
