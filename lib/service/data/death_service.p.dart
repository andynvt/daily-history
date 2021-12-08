import 'package:daily_history/model/model.dart';
import 'package:flutter/material.dart';

DeathService get deathSrv => DeathService.shared();

class DeathService extends ChangeNotifier {
  static DeathService? _sInstance;

  final Map<int, EventInfo> data = {};

  DeathService._();

  factory DeathService.shared() {
    return _sInstance ??= DeathService._();
  }
}
