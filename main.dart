import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.red),
      home: EmailSender(),
    );
  }
}

class EmailSender extends StatefulWidget {
  const EmailSender({Key? key}) : super(key: key);

  @override
  _EmailSenderState createState() => _EmailSenderState();
}

class _EmailSenderState extends State<EmailSender> {
  Future send() async {
    print("object");
    final servicesID = "hassankhan5805";
    final templateID = "template_dc3zwuo";
    final userID = "UXr24732yyTTHmHY9";
    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    final response = await http
        .post(url,
            headers: {'Content-Type': 'application/json'},
            body: json.encode({
              'service_id': servicesID,
              'template_id': templateID,
              'user_id': userID,
              // 'accessToken': "4gez68Vuwd1f_tlax-j5c",
              'template_params': {
                'user_name': "hassan1",
                'user_email': "hassankhan5805@gmail.com",
                'user_subject': "hassan1",
                'user_message': "hassan1",
              }
            }))
        .then((value) => print(value.body));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Plugin example app'),
        actions: <Widget>[
          IconButton(
            onPressed: send,
            icon: Icon(Icons.send),
          )
        ],
      ),
    );
  }
}
