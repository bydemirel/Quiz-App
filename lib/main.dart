import 'package:flutter/material.dart';

void main()
{
  runApp(quizler());
}

class quizler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QUIZZLER',
      home: quizScreen(),
    );
  }
}

class quizScreen extends StatefulWidget {
  @override
  _quizScreenState createState() => _quizScreenState();
}

class _quizScreenState extends State<quizScreen> {

  String text = "Hanefilik İslam dininde sünni bir mezheptir.";
  bool key = false;
  int number = 1;
  int score = 0;
  String resultTextTrue = "";
  String resultTextFalse = "";
  double resultFontSize = 40;
  double visibility = 0.0;
  bool enabled = false;

  questions(questionNumber,key)
  {
    setState(() {
      ++number;
      if(questionNumber == 1)
      {
        if(key == true)
        {
          text = "Barcelona, İspanya'nın başkentidir.";
          score++;
        }
        else
        {
          text = "Barcelona, İspanya'nın başkentidir.";

        }
      }
      if(questionNumber == 2)
      {
        if(key == false)
        {
          score++;
          text = "Alanya, Antalya'nın ilçesidir.";
        }
        else
        {
          text = "Alanya, Antalya'nın ilçesidir.";
        }
      }
      if(questionNumber == 3)
      {
        if(key == true)
        {
          score++;
          text = "İstanbul 14. yüzyılda fethedilmiştir.";
        }
        else
        {
          text = "İstanbul 14. yüzyılda fethedilmiştir.";
        }
      }
      if(questionNumber == 4)
      {
        if(key == false)
        {
          score++;
          text = "Her doğal sayı tamsayıdır.";
        }
        else
        {
          text = "Her doğal sayı tamsayıdır.";
        }
      }
      if(questionNumber == 5)
      {
        if(key == true)
        {
          score++;
          text = "Her yıl 12 Mayıs Anneler günü olarak kutlanır.";
        }
        else
        {
          text = "Her yıl 12 Mayıs Anneler günü olarak kutlanır.";
        }
      }
      if(questionNumber == 6)
      {
        if(key == false)
        {
          score++;
          text = "Dinozorlarla insanlar aynı anda yeryüzünde bulunmamıştır.";
        }
        else
        {
          text = "Dinozorlarla insanlar aynı anda yeryüzünde bulunmamıştır.";
        }
      }
      if(questionNumber == 7)
      {
        if(key == true)
        {
          score++;
          text = "Kanada'nın başkenti Toronto'dur.";
        }
        else
        {
          text = "Kanada'nın başkenti Toronto'dur.";
        }
      }
      if(questionNumber == 8)
      {
        if(key == false)
        {
          score++;
          text = "Çeyrek altın 0.25 gramdır.";
        }
        else
        {
          text = "Çeyrek altın 0.25 gramdır.";
        }
      }
      if(questionNumber == 9)
      {
        if(key == false)
        {
          score++;
          text = "Isı, termometre ile ölçülür.";
        }
        else
        {
          text = "Isı, termometre ile ölçülür.";
        }
      }
      if(questionNumber == 10)
      {
        if(key == false)
        {
          score++;
          text = "İrlanda Cumhuriyeti Birleşik Krallık'ın bir parçasıdır.";
        }
        else
        {
          text = "İrlanda Cumhuriyeti Birleşik Krallık'ın bir parçasıdır.";
        }
      }
      if(questionNumber == 11)
        {
          if(key == false)
            {
              score++;
            }
             enabled = true;
             visibility = 1.0;
             text = "Quiz Bitti !";
             resultTextTrue = "Doğru sayınız: ";
             resultFontSize = 25.0;
             resultTextFalse = " Yanlış sayınız: "+ (11-score).toString();

        }

    });

}

resetApp()
{
  setState(() {
    score = 0;
    text = "Hanefilik İslam dininde sünni bir mezheptir.";
    number = 1;
    resultTextTrue = "";
    resultTextFalse = "";
    resultFontSize = 40.0;
    visibility = 0.0;
    enabled = false;
  });
}

  @override
  Widget build(BuildContext context) {

    var _onPressed;
    if(enabled)
      {
        _onPressed = ()
            {
              resetApp();
            };
      }

    return Scaffold(
      backgroundColor: Colors.black38,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Center(
          child: Text('QUIZZLER',style: TextStyle(fontSize: 35.0),),
        ),
        backgroundColor: Colors.black38,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 3,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: Text(text,textAlign: TextAlign.center,style: TextStyle(fontSize: 25.0,color: Colors.white,fontWeight: FontWeight.bold),),
                ),
              ),
          ),
          Expanded(
                child: Container(
                padding: EdgeInsets.fromLTRB(50, 10, 50, 25),
            child: Center(
              child: Text(resultTextTrue+score.toString()+"\n"+resultTextFalse,textAlign: TextAlign.center,
                style: TextStyle(fontSize: resultFontSize,color: Colors.white,fontWeight: FontWeight.bold),),
            ),
          ),
    ),
          Expanded(
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.green,
                    onPressed: ()
                  {
                    key = true;
                    questions(number, key);
                  },
                    child: Text('DOĞRU',style: TextStyle(fontSize: 20.0,color: Colors.white),),
                ),
              ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: FlatButton(
                textColor: Colors.white,
                color: Colors.red,
                onPressed: ()
                {
                  key = false;
                  questions(number, key);
                },
                child: Text('YANLIŞ',style: TextStyle(fontSize: 20.0,color: Colors.white),),
              ),
            ),
          ),
          Expanded(
            child: Opacity(
                opacity: visibility,
                child: Container(
                padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.grey[600],
              onPressed: _onPressed,

              child: Text("YENİDEN BAŞLA",style: TextStyle(fontSize: 20.0,color: Colors.white),),
            ),
          ),
            ),
          ),
        ],
      )
    );
  }
}

