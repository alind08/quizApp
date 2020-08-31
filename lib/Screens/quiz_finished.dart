import 'package:flutter/material.dart';
import 'package:quiz_app_akudo/Screens/quiz_start.dart';
import 'package:quiz_app_akudo/Utils/decor.dart';
import 'package:quiz_app_akudo/Utils/transition.dart';

class QuizFinished extends StatefulWidget {
  String finResult1;
  String finResult2;
  QuizFinished(@required this.finResult1,this.finResult2);
  @override
  _QuizFinishedState createState() => _QuizFinishedState(this.finResult1,this.finResult2);
}

class _QuizFinishedState extends State<QuizFinished> {
  String finResult1;
  String finResult2;
  _QuizFinishedState(this.finResult1,this.finResult2);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rewards",style: myTextStyle,),
        backgroundColor: Colors.amber,
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        child: Center(
            child: finResult1=="2"&&finResult2=="2"?Text("Hooray! You have earned a Reward",style: myTextStyle2,):Text("Sorry try Again!",style: myTextStyle2,)),
      ),
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: FloatingActionButton.extended(
            onPressed: (){
              Navigator.push(context, PageTransition(type:PageTransitionType.rightToLeftWithFade,child: QuizStart())
              );
            },
            label: Text("Go to Home")),
      ),
    );
  }
}
