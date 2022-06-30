import 'dart:convert';
import 'package:http/http.dart' as http;

Future send(String name,String email) async {
  final servicesID = "";
  final templateID = "";
  final userID = "";//you will find this in account as a public key
  final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
  final response = await http
      .post(url,
          headers: {'Content-Type': 'application/json'},
          body: json.encode({
            'service_id': servicesID,
            'template_id': templateID,
            'user_id': userID,
            // 'accessToken': "",
            'template_params': {
              'user_name': name,
              'user_email': email,
              'user_subject': "subject ",
              'user_message': "your message",
            }
          }))
      .then((value) => print(value.body));
}
