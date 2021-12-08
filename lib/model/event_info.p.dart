import 'package:flutter/material.dart';
import 'model.dart';

class EventInfo extends ChangeNotifier {
  final _data = {};

  String get year => _data['year'] ?? '';
  String get title => _data['text'] ?? '';
  String get content => _data['no_year_html'] ?? '';
  String get imageURL => _data['image'] ?? '';

  final List<LinkInfo> links = [];

  EventInfo.from(Map e) {
    _data.addAll(e);
  }
}
