import 'package:flutter/material.dart';

DataService get dataSrv => DataService.shared();

class DataService extends ChangeNotifier {
  static DataService? _sInstance;

  DataService._();

  factory DataService.shared() {
    return _sInstance ??= DataService._();
  }
}
