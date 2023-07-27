import 'package:flutter/material.dart';
import 'package:new_game/home_page.dart';

class WrongGuessPage extends StatelessWidget {
  final int randomNumber;
  WrongGuessPage({required this.randomNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text('Guess Game'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Sorry Game Over. My secret number is',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black54),
            ),
            SizedBox(
              height: 30,
            ),
            Text('$randomNumber',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black54),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage(),
              ),
              );
            }, child: Text('Start the Game Again',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),),
          ],
        ),
      ),
    );
  }
}
