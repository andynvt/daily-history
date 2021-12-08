import 'package:flutter/material.dart';

EventService get eventSrv => EventService.shared();

class EventService extends ChangeNotifier {
  static EventService? _sInstance;

  EventService._();

  factory EventService.shared() {
    return _sInstance ??= EventService._();
  }
}
