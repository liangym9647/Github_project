import 'package:flutter/material.dart';
import 'Certain_or_Not_Page.dart';
import 'Color_Language_Change.dart';
import 'package:provider/provider.dart';
import 'Color_Language_arguments.dart';


class JudgeColor{
  judgeColor(a) {
    //theme color
    switch (a) {
      case 1:
        return "white"; //white
        break;
      case 2:
        return "black"; //black
        break;

    }
  }

  judgeLanguage(int b){
    if (b==3){
      return "English";
    }
    else{
      return "Chinese";
    }
  }
}



