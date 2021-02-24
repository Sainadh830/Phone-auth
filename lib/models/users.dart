import 'package:flutter/material.dart';

class Users {
  String phoneNo, verificationId, smsCode, users;
  bool codeSent = false;
  Users({this.phoneNo, this.verificationId, this.smsCode, this.users});

  Users.fromMap(Map<String, dynamic> map) {
    phoneNo = map['phno'];
    users = map['users'];
  }
}
