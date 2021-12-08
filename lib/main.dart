import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
String buttonText1 = "Button press to see picture";
String buttonText2 = "Button press to see picture";
Color ButtonColor1 = Colors.lightGreen;
Color ButtonColor2 = Colors.lightGreen;
bool pictureVisibility1 = false;
bool pictureVisibility2 = false;
String NtrkImg1 = "https://cdn.pixabay.com/photo/2015/04/19/08/33/flower-729512_960_720.jpg";
String NtrkImg2 = "https://cdn.pixabay.com/photo/2015/04/19/08/33/flower-729512_960_720.jpg";
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData( size: 20),
        excludeHeaderSemantics: true,
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text("My First App",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              //fontStyle: FontStyle.italic

        ),
        ),
      ),
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.center,
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              //Button one;
              RaisedButton(
                textColor: Colors.white,
                child: Text(buttonText1, style: TextStyle(color: Colors.white)),
                color: ButtonColor1,
                  onPressed:(){
                  setState(() {
                    ButtonColor1 = Colors.red;
                    buttonText1 = " Picture is visible now";
                    pictureVisibility1= true;
                  });
              }
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Visibility(
                    visible: pictureVisibility1,
                    child: Image.network(NtrkImg1)),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: RaisedButton(
                    textColor: Colors.white,
                    child: Text(buttonText2, style: TextStyle(color: Colors.white)),
                    color: ButtonColor2,
                    onPressed:(){
                      setState(() {
                        ButtonColor2 = Colors.red;
                        buttonText2 = " Picture is visible now";
                        pictureVisibility2= true;
                      });
                    }
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Visibility(
                  visible: pictureVisibility2,
                    child: Image.network(NtrkImg2)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
