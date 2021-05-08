import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';
import 'dart:convert';

Image imagefromstorage;

class Utility {
  static Future<bool> SaveImg(String medname, String value) async {
    final SharedPreferences storage = await SharedPreferences.getInstance();
    return storage.setString(medname, value);
  }

  static Future<String> GetImg(String medname) async {
    final SharedPreferences storage = await SharedPreferences.getInstance();
    return storage.getString(medname);
  }

  static String base64String(Uint8List data) {
    return base64Encode(data);
  }

  static Image imagefromBase64String(String base64String) {
    return Image.memory(base64Decode(base64String), fit: BoxFit.fill);
  }
}

Image loadImage(String medname) {
  Utility.GetImg(medname).then((img) {
    imagefromstorage = Utility.imagefromBase64String(img);
  });
  return imagefromstorage;
}
