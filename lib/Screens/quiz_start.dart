import 'package:flutter/material.dart';
import 'package:quiz_app_akudo/Screens/quiz_questions.dart';
import 'package:quiz_app_akudo/Utils/decor.dart';
import 'package:quiz_app_akudo/Utils/transition.dart';

class QuizStart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz"),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 20,right: 20,top: 20),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(width: 2,color: Colors.pink),
                borderRadius: BorderRadius.circular(15)
              ),
              child: Text(
                  "Lorem Ipsum is simply dummy text of the  main printing and "
                      "typesetting industry.Lorem Ipsum has been the industry's"
                      " standard dummy text ever since the 1500s,Find Categories listed below",
                style: detailStyle,
                ),
            ),
            SizedBox(height: 50,),
            myCategory(
                "1","Finance", Color(0xffF3FF33),Icon(Icons.monetization_on)),
            SizedBox(height: 20,),
            myCategory(
                "2","History", Color(0xff33FDFF),Icon(Icons.history)),
            SizedBox(height: 20,),
            myCategory(
                "3","Photography", Color(0xffFF7D33),Icon(Icons.perm_media)),
            SizedBox(height: 20,),
            myCategory(
                "4","Movies", Color(0xff9733FF),Icon(Icons.movie)),
            SizedBox(height: 20,),
            myCategory(
                "5","Music", Color(0xff33FF92),Icon(Icons.library_music)),
            SizedBox(height: 20,),
            Container(
              height: 50,width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: RaisedButton(
                child: Text("Start",style: myTextStyle,),
                elevation: 200,
                  color: Colors.pinkAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                  ),
                onPressed: (){
                  Navigator.push(
                    context,
                      PageTransition(type:PageTransitionType.rightToLeftWithFade,child: QuizQuestions())
                  );
                },
              ),
            )
          ],
        ),
      )
    );
  }
}

Widget myCategory(String lead ,String categoryName, Color colorVal,Icon icon) {
  return Container(
    margin: EdgeInsets.only(left: 20,right: 20),
    height: 50,
    color: colorVal,
    child: ListTile(
      leading: Text(lead, style: myTextStyle,),
      trailing: icon,
      title: Center(child: Text(categoryName,style: myTextStyle,)),
    ),
  );
}

