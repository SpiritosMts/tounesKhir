import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


Future<String> getQuoteOfTheDay() async{
  try {
  var url = Uri.parse('https://quotes.rest/qod');
  var response = await http.get(url);

  var jsonResponse = jsonDecode(response.body);
  print((jsonResponse['contents']['quotes'][0]['quote']).toString());
  return  (jsonResponse['contents']['quotes'][0]['quote']).toString();
  } catch (error) {
    print('Error Get Phones: $error');
    return '';
  }

}
