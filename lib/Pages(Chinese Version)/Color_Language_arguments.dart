import 'package:flutter/material.dart';

class Counter_Chinese with ChangeNotifier{
  int Color=1; //定义初始状态
  int get count=>Color;//获取状态
  Change_Color(){
    notifyListeners();//更新状态，其他组件需要使用这个counter_1时数组也会跟着变化
  }
}