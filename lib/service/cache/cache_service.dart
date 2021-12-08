import 'package:shared_preferences/shared_preferences.dart';

CacheService get cacheSrv => CacheService.shared();

class CacheService {
  static CacheService? _sInstance;
  late SharedPreferences _service;

  CacheService._();

  factory CacheService.shared() {
    return _sInstance ??= CacheService._();
  }

  static Future init() async {
    return await CacheService.shared()._init();
  }

  Future _init() async {
    _service = await SharedPreferences.getInstance();
  }

  bool getBool(String key, {bool defValue = false}) {
    return _service.getBool(key) ?? defValue;
  }

  int getInt(String key, {int defValue = 0}) {
    return _service.getInt(key) ?? defValue;
  }

  double getDouble(String key, {double defValue = 0.0}) {
    return _service.getDouble(key) ?? defValue;
  }

  String getString(String key, {String defValue = ""}) {
    return _service.getString(key) ?? defValue;
  }

  List getListString(String key, {List defValue = const []}) {
    return _service.getStringList(key) ?? defValue;
  }

  bool hasKey(String key) {
    return _service.containsKey(key);
  }

  void setBool(String key, bool value) {
    _service.setBool(key, value);
  }

  void setInt(String key, int value) {
    _service.setInt(key, value);
  }

  void setDouble(String key, double value) {
    _service.setDouble(key, value);
  }

  Future<bool> setString(String key, String value) {
    return _service.setString(key, value);
  }

  Future<bool> setListString(String key, List<String> value) {
    return _service.setStringList(key, value);
  }

  Future<bool> remove(String key) {
    return _service.remove(key);
  }

  Future<bool> clear() {
    return _service.clear();
  }

  Future<void> reload() {
    return _service.reload();
  }

  void removePrefix(String prefix) {
    _service.getKeys().forEach((key) {
      if (key.startsWith(prefix)) {
        _service.remove(key);
      }
    });
  }
}
