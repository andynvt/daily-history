import 'package:flutter/material.dart';

BirthService get birthSrv => BirthService.shared();

class BirthService extends ChangeNotifier {
  static BirthService? _sInstance;

  BirthService._();

  factory BirthService.shared() {
    return _sInstance ??= BirthService._();
  }
}
