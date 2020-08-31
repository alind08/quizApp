import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app_akudo/Screens/quiz_finished.dart';
import 'package:quiz_app_akudo/Utils/decor.dart';
import 'package:quiz_app_akudo/Utils/transition.dart';

class QuizQuestions extends StatefulWidget {
  @override
  _QuizQuestionsState createState() => _QuizQuestionsState();
}

class _QuizQuestionsState extends State<QuizQuestions> {
  String group1SelectedValue;
  Widget question1(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(25),
          padding: EdgeInsets.all(5),
          color: Colors.lightBlueAccent,
          child: Center(child: Text("Question 1",style: myTextStyle,),),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(75, 25, 75, 25),
          padding: EdgeInsets.all(5),
          color: Colors.greenAccent,
          child: ListTile(
            title: Text("Option1",style: myTextStyle2,),
            leading: Radio(
              value: "1",
              groupValue: group1SelectedValue,
              onChanged: _group1Changes,
            ),
          )
        ),
        Container(
          color: Colors.greenAccent,
          margin: EdgeInsets.fromLTRB(75, 25, 75, 25),
          padding: EdgeInsets.all(5),
          child: ListTile(
            title: Text("Option2",style: myTextStyle2,),
            leading: Radio(
              value: "2",
              onChanged: _group1Changes,
              groupValue:   group1SelectedValue,
            ),
          )
        ),
        SizedBox(height: 50,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Align(
              alignment: Alignment.bottomLeft,
              child:RaisedButton(
                padding: EdgeInsets.all(10),
                child: Text("Previous Question",style: myTextStyle,),
                elevation: 200,
                color: Colors.pinkAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(15.0),
                ),
                onPressed: (){
                  Navigator.push(
                      context,
                      PageTransition(type:PageTransitionType.rightToLeftWithFade,child: QuizQuestions())
                  );
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: RaisedButton(
                padding: EdgeInsets.all(10),
                child: Text("Next Question",style: myTextStyle,),
                elevation: 200,
                color: Colors.pinkAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(15.0),
                ),
                onPressed: (){
                  Navigator.push(
                      context,
                      PageTransition(type:PageTransitionType.fade,child: QuizQuestions2(result1: group1SelectedValue))
                  );
                },
              ),
            )
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Questions"),
        backgroundColor: Colors.amber,
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: question1(),
    );
  }
  void _group1Changes(String value) {
    setState(() {
      group1SelectedValue = value;
    });
  }

}

class QuizQuestions2 extends StatefulWidget {
  String result1;
  QuizQuestions2({@required this.result1});
  @override
  _QuizQuestions2State createState() => _QuizQuestions2State(result1);
}

class _QuizQuestions2State extends State<QuizQuestions2> {
  String result1;
  _QuizQuestions2State(this.result1);

  String group2SelectedValue;
  Widget question2() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(25),
          padding: EdgeInsets.all(5),
          color: Colors.lightBlueAccent,
          child: Center(child: Text("Question 2", style: myTextStyle,),),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(75, 25, 75, 25),
          padding: EdgeInsets.all(5),
          color: Colors.greenAccent,
          child: ListTile(
            title: Text("Option1",style: myTextStyle2,),
            leading: Radio(
              value: "1",
              groupValue: group2SelectedValue,
              onChanged: _group2Changes,
            ),
          )
        ),
        Container(
          color: Colors.greenAccent,
          margin: EdgeInsets.fromLTRB(75, 25, 75, 25),
          padding: EdgeInsets.all(5),
          child: ListTile(
            title: Text("Option2",style: myTextStyle2,),
            leading: Radio(
              value: "2",
              groupValue: group2SelectedValue,
              onChanged: _group2Changes,
            ),
          )
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Align(
              alignment: Alignment.bottomLeft,
              child: RaisedButton(
                padding: EdgeInsets.all(10),
                child: Text("Previous Question", style: myTextStyle,),
                elevation: 200,
                color: Colors.pinkAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(15.0),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.fade, child: QuizQuestions())
                  );
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: RaisedButton(
                padding: EdgeInsets.all(10),
                child: Text("Next Question", style: myTextStyle,),
                elevation: 200,
                color: Colors.pinkAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(15.0),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.rightToLeftWithFade,
                          child: QuizFinished(result1,group2SelectedValue))
                  );
                },
              ),
            )
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Questions"),
        backgroundColor: Colors.amber,
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: question2(),
    );
  }


  void _group2Changes(String value) {
    setState(() {
      group2SelectedValue = value;
    });
  }
}