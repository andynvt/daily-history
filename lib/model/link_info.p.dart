import 'package:flutter/material.dart';

class LinkInfo extends ChangeNotifier {
  final _data = {};

  String get title => _data['title'] ?? '';
  String get link => _data['link'] ?? '';

  LinkInfo.from(Map e) {
    _data.addAll(e);
  }
}
