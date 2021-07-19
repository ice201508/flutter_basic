// import 'package:flutter/material.dart';

// // 单例： 确保一个类仅有一个实例，并提供一个访问它的全局访问点
// // 单例模式， 懒汉模式， 在类加载时，不创建实例。加载时速度较快，运行时获取实例速度较慢
// class SomeSharedInstance {
//   // 单例公开访问点
//   factory SomeSharedInstance() => _sharedInstance();
  
//   // 静态私有成员，没有初始化
//   static SomeSharedInstance _instance;
  
//   // 私有构造函数
//   SomeSharedInstance._() {
//     // 具体初始化代码
//   }

//   // 静态、同步、私有访问点
//   static SomeSharedInstance _sharedInstance() {
//     if (_instance == null) {
//       _instance = SomeSharedInstance._();
//     }
//     return _instance;
//   }
// }

// // 单例模式， 饿汉模式
// class SomeSharedInstance2 {
//   // 单例公开访问点
//   factory SomeSharedInstance2() => _sharedInstance();
  
//   // 静态私有成员，类加载时初始化， 
//   static final SomeSharedInstance2 _instance = SomeSharedInstance2._();
  
//   // 私有构造函数
//   SomeSharedInstance2._() {
//     // 具体初始化代码
//   }

//   // 静态、同步、私有访问点
//   static SomeSharedInstance2 _sharedInstance() {
//     return _instance;
//   }
// }

