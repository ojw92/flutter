import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Hello World Travel Title',
        home: Scaffold(
            appBar: AppBar(
              title: Text('Hello World Travel App'),
              backgroundColor: Colors.deepPurple,
            ),
            body: Builder(
                // SingleChildScrollView() allows scrolling when pixels overflow
                builder: (context) => SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Center(
                      child: Column(children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                            child: Text(
                              'Hello World Travel',
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue[800]),
                          ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5),
                          child: Text(
                            'Discover the World',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.deepPurpleAccent),
                          ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: Image.network(
                            'https://media.istockphoto.com/id/667782268/photo/sleeping-red-panda-funny-cute-animal-image.jpg?s=1024x1024&w=is&k=20&c=Bm8Mtbwcw7c-BXrAEf2tLmDLHJ84oQeb2VwbbAp0BeY=',
                            height: 350,
                          ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: ElevatedButton( // RaisedButton is deprecated
                            child: Text('Contact Us'),
                            onPressed: () => contactUs(context),
                          ),
                      )]))))))
    );
  }

  void contactUs(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Contact Us'),
          content: Text('E-mail us at hello@world.com'),
          actions: <Widget>[
            TextButton( // FlatButton is deprecated
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }
}