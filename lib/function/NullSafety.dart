import 'package:flutter/material.dart';

class NullSafety extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('111');
  }

  // 空安全的作用
  // 引入空安全目的不是消灭null，而是为开发者提供工具来掌握控制null的能力
  // 编辑提示(红线报错),提前发现(编译时就发现错误), 性能提升

  // 空安全问题； 按需添加 ?、!、required 以及 late 来消除静态错误
  // 默认情况下，所有变量都是非空的
  fn1 () {
    int a = 10;
    // 泛型空安全， 表示数组里面可以存在空类型
    List<int?> c = [a, null];
  }
  
  fn2 () {
    // 空安全里面有“?”
    int? num1 = null; // 可以这样写，不过如果是null， 一般就不要初始化了，只声明即可
  }
}