import 'package:get_storage/get_storage.dart';

class SLocalStorage {
  static final SLocalStorage _instance = SLocalStorage._internal();

  factory SLocalStorage() {
    return _instance;
  }

  SLocalStorage._internal();

  final _storage = GetStorage();

  // Generic method to save data
  Future<void> saveData<S>(String key, S value) async {
    await _storage.write(key, value);
  }

  // Generic method to read data
  S? readData<S>(String key) {
    return _storage.read<S>(key);
  }

  // Generic method to remove fata
  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  // Clear all data in storage
  Future<void> clearAll() async {
    await _storage.erase();
  }
}