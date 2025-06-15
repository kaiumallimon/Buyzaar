import 'package:hive_flutter/hive_flutter.dart';

class LocalDB {
  static const String _boxName = 'localDataBox';
  late Box<Map<dynamic, dynamic>> _box;

  Future<void> init() async {
    await Hive.initFlutter();
    _box = await Hive.openBox<Map<dynamic, dynamic>>(_boxName);
  }

  // CRUD Operations
  Future<void> saveData(String key, Map<String, dynamic> data) async {
    await _box.put(key, data);
  }

  Map<dynamic, dynamic>? getData(String key) {
    return _box.get(key);
  }

  List<Map<dynamic, dynamic>> getAllData() {
    return _box.values.toList();
  }

  Future<void> updateData(String key, Map<String, dynamic> data) async {
    await _box.put(key, data);
  }

  Future<void> deleteData(String key) async {
    await _box.delete(key);
  }

  Future<void> clearAll() async {
    await _box.clear();
  }

  // Close the box when done
  Future<void> close() async {
    await _box.close();
  }
}
