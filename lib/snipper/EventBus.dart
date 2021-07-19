// import 'package:flutter/material.dart';

// typedef void EventCallback(arg);

// class LiveEventBus {
//   //私有构造函数
//   LiveEventBus._internal();

//   //保存单例
//   static LiveEventBus _singleton = new LiveEventBus._internal();

//   //工厂构造函数
//   factory LiveEventBus()=> _singleton;

//   //保存事件订阅者队列，key:事件名(id)，value: 对应事件的订阅者队列
//   Map<Object, List<EventCallback>> _emap = new Map<Object, List<EventCallback>>();

//   //添加订阅者
//   void on(String eventName, EventCallback f) {
//     if (eventName == null || f == null) return;
//     _emap[eventName] ??= [];
//     _emap[eventName]!.add(f);
//   }

//   //移除订阅者
//   void off(String eventName, [EventCallback f]) {
//     List<EventCallback> list = _emap[eventName];
//     if (eventName == null || list == null) return;

//     if (f == null) {
//       _emap[eventName] = null;
//     } else {
//       list.remove(f);
//     }
//   }

//   //触发事件，事件触发后该事件所有订阅者会被调用
//   void emit(String eventName, [arg]) {
//     List<EventCallback> list = _emap[eventName];
//     if (list == null) return;

//     int len = list.length - 1;
//     //反向遍历，防止订阅者在回调中移除自身带来的下标错位 
//     for (int i = len; i > -1; --i) {
//       list[i](arg);
//     }
//   }

//   destroy() {
//     _emap.clear();
//   }
// }
