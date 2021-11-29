import 'package:flutter/material.dart';
import 'Certain_or_Not_Page.dart';
class JudgeColor{
  judgeColor(a) {
    //theme color
    switch (a) {
      case 1:
        return 0xFF000000; //balck
        break;
      case 2:
        return 0xFFFF0000; //red
        break;
      case 3:
        return 0xFF996633; //blown
        break;
      case 4:
        return 0xFF00FFFF; //light blue
        break;
      case 5:
        return 0xFFFF7F00; //orange
        break;
      case 6:
        return 0xFFFFFFFF; //white
        break;
    }
  }

  judgeLanguage(int b){
    if (b==7){
      return "English";
    }
    else{
      return "Chinese";
    }
  }
}



