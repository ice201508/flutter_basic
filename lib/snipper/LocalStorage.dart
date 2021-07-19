// import 'package:shared_preferences/shared_preferences.dart';
// import 'dart:convert';

// class SharedPreferencesStorage{
//   static final _instance = SharedPreferencesStorage._init();
//   factory SharedPreferencesStorage() => _instance;
//   static SharedPreferences _storage;

//   SharedPreferencesStorage._init() {
//     _initStorage();
//   }

//   _initStorage() async {
//     if (_storage == null) {
//       _storage = await SharedPreferences.getInstance();
//     }
//   }
//   /// 设置存储 增，改
//   setStorage(String key, dynamic value) async {
//     await _initStorage();
//     String type;
//     if(value is Map || value is List){
//       type = 'String';
//       value = JsonEncoder().convert(value);
//     } else {
//       type = value.runtimeType.toString();
//     }
    
//     switch (type) {
//       case 'String':
//         _storage.setString(key, value);
//         break;
//       case 'int':
//         _storage.setInt(key, value);
//         break;
//       case 'double':
//         _storage.setDouble(key, value);
//         break;
//       case 'bool':
//         _storage.setBool(key, value);
//         break;
//     }
//   }
  
//   /// 获取存储 查
//   Future<dynamic> getStorage(String key) async {
//     await _initStorage();
//     dynamic value = _storage.get(key);
//     if (_isJson(value)) {
//       return JsonDecoder().convert(value);
//     }else{
//       return value;
//     }
//   }

//   /// 删除key指向的存储 删
//   Future<bool> removeStorage(String key) async {
//     await _initStorage();
//     if(await hasKey(key)){
//       await _storage.remove(key);
//       return true;
//     }else{
//       return false;
//     }
//   }

//   /// 是否包含某个key 
//   Future<bool> hasKey(String key) async {
//     await _initStorage();
//     return _storage.containsKey(key);
//   }

//   /// 清空存储
//   Future<bool> clear() async {
//     await _initStorage();
//     _storage.clear();
//     return true;
//   }

//   /// 获取所有的key
//   Future<Set<String>> getKeys() async {
//     await _initStorage();
//     return _storage.getKeys();
//   }


//   // 判断是否是JSON字符串
//   _isJson(dynamic value) {
//     try{
//       JsonDecoder().convert(value);
//       return true;
//     } catch(e) {
//       return false;
//     }
//   }
// }