import 'package:flutter/material.dart';

DeathService get deathSrv => DeathService.shared();

class DeathService extends ChangeNotifier {
  static DeathService? _sInstance;

  DeathService._();

  factory DeathService.shared() {
    return _sInstance ??= DeathService._();
  }
}
