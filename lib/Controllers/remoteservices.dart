// ignore_for_file: avoid_single_cascade_in_expression_statements

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shopx/Controllers/product.dart';
 
class RemoteServices{
  static var client = http.Client();
  static Future<List<Welcome>> fetchProducts() async {
    var response = await client.get(Uri.parse('https://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline'));
    
     var jsonString = response.body;
     return welcomeFromJson(jsonString);
    
     
    

    
    
    
      
    }
  }

