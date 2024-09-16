import 'package:flutter/material.dart';

InputDecoration appInputStyle(lable){
  return InputDecoration(
    contentPadding: const EdgeInsets.fromLTRB(20, 10, 10, 20),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    fillColor:  Colors.white,
    filled: true,
    labelText: lable,
  );
}


TextStyle headText1(){
  return const TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w700
  );
}



// TextStyle headText2(){
//   return const TextStyle(
//
//   );
//}


ButtonStyle addButtonStyle(){
  return ElevatedButton.styleFrom(
    padding: const EdgeInsets.all(20),
    backgroundColor: Colors.green,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),

    )
  );
}