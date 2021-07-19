import 'package:flutter/material.dart';

class FunctionParams extends StatefulWidget {
  @override
  FunctionParamsState createState() => FunctionParamsState();
}

class FunctionParamsState extends State<FunctionParams> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          child: Text('必填参数'),
          onPressed: fn1('name', true, 25),
        ),
        ElevatedButton(
          child: Text('名称可选参数'),
          // onPressed: fn2('name'),
          onPressed: fn2('name', sex: true, age: 25),
        ),
        ElevatedButton(
          child: Text('位置可选参数'),
          onPressed: fn3('name', true, 25),
        ),
      ],
    );
  }

  // 有些文件变红了，那是因为这些文件没有通过null safety 检查,通常表示某些变量可为null,某些变量不能为null，解决这些需要添加字符 如：? , required,!
  // ? 表示参数可以为null
  
  // 函数参数的问题, 必填参数与可选参数 (默认值问题)
  fn1 (String name, bool sex, int age) {
    print('$name, $sex, $age');
  }

  // 名称可选参数
  // fn2 (String name, {required bool sex, required int age}) 可选参数的必填
  // fn2 (String name, {bool? sex, int? age})  参数加上 ? 表示允许为null
  // 设定程序入口的语言版本 @dart=2.9 在文件的最顶部添加 这句话，就不会有空安全的验证
  fn2 (String name, {bool? sex = false, int? age}) {
    print('$name, $sex, $age');
  }

  // 位置可选参数
  fn3 (String name, [bool? sex, int? age]) {
    print('$name, $sex, $age');
  }
}