// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
import 'package:firebase_storage/firebase_storage.dart';
import 'dart:io';

Future<String> getPhoneNum(String userId) async {
  String phoneNum = "";
  CollectionReference ref = FirebaseFirestore.instance.collection('users');
  await ref.doc(userId).get().then((DocumentSnapshot result) {
    if (result.exists) {
      phoneNum = result["phoneNumber"];
    }
  });
  return phoneNum;
}
