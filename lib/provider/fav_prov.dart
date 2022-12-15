import 'package:flutter/material.dart';


class Favprovider extends ChangeNotifier{
  List<String> favlist=[];
  List<String> get words => favlist;

  //execute on tap time
  void selectedfav(String word){
    // isExist passes boolian value
     final isExist=favlist.contains(word);
     if(isExist){
       favlist.remove(word);
     }
     else{
       favlist.add(word);
     }
     notifyListeners();
  }

  bool isFav(String word){
    final isFavt=favlist.contains(word);
    return isFavt;
  }


}