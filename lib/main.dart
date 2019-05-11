import 'package:flutter_web/material.dart';
import 'package:flutter_web/widgets.dart';
import 'package:conneraldrich_web/rich_text_view.dart';
import 'dart:html' as html;

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Conner Aldrich',
      theme: ThemeData(
        primaryColor: Color(0xFF272e4f),
        accentColor: Color(0xFFff5e3a),
        scaffoldBackgroundColor: Color(0xFFf2f2f0),
      ),
      home: Main(),
    );
  }
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 100.0),
          Container(
            height: 200.0,
            child: Image.asset('avatar.png'),
          ),
          SizedBox(height: 25.0),
          Name(),
          SizedBox(height: 10.0),
          Description(),
          SizedBox(height: 28.0),
          Email(),
          SizedBox(height: 18.0),
          SocialMedia(),
        ],
      ),
    );
  }
}

class Name extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Conner Aldrich",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 40.0,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}

class Description extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Fullstack Developer focused on Flutter",
        style: TextStyle(
          fontSize: 18.0,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}

class Email extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      textDirection: TextDirection.ltr,
      text: TextSpan(children: <TextSpan>[
        LinkTextSpan(
          url: "mailto:connercaldrich@gmail.com",
          text: "connercaldrich@gmail.com",
          style: TextStyle(
            fontSize: 18.0,
            decoration: TextDecoration.underline,
            color: Theme.of(context).accentColor,
          ),
        ),
      ]),
    );
  }
}

class SocialMedia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SocialContact(
            'twitter.png',
            "https://twitter.com/connercaldrich",
            height: 20.0,
          ),
          SizedBox(width: 12.0),
          SocialContact(
            'medium.png',
            "https://medium.com/@connercaldrich",
          ),
          SizedBox(width: 12.0),
          SocialContact(
            'linkedin.png',
            "https://www.linkedin.com/in/conner-aldrich-8b634a184",
            height: 17.0,
          ),
        ],
      ),
    );
  }
}

class SocialContact extends StatelessWidget {
  final String image;
  final String link;
  final double height;

  SocialContact(this.image, this.link, {this.height = 25.0});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        html.window.open(link, "_blank");
      },
      child: CircleAvatar(
        radius: 17.0,
        backgroundColor: Colors.grey[300],
        child: Image.asset(
          image,
          color: Colors.grey[400],
          height: height,
        ),
      ),
    );
  }
}
