import 'package:flutter/material.dart';

import '../style.dart';

class AppHomePage extends StatefulWidget{
  const AppHomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePageUI();
  }

}

class HomePageUI extends State<AppHomePage> {

  double sum = 0;
  Map<String, double> formValue = {
    "firstNumber": 0,
    "secondNumber": 0,
  };

  inputOnChanged(inputKey, inputValue){
    setState(() {
      formValue.update(inputKey, (value) => double.parse(inputValue));
    });
  }


  addTwoNumber(){
    setState(() {
      sum = formValue['firstNumber']! + formValue['secondNumber']!;
    });

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title:  const Text('Sum App'),
        backgroundColor: const Color.fromRGBO(233,221, 255, 1),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
                'Sum = ${sum.toStringAsFixed(2)}',
                 style:headText1(),
            ),
            TextFormField(
              decoration: appInputStyle('First Number'),
              onChanged: (value){
                inputOnChanged('firstNumber', value);
              },
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: appInputStyle('Second Number'),
              onChanged: (value){
                  inputOnChanged('secondNumber', value);
                },
            ),
            const SizedBox(
              height: 10,
            ),
             SizedBox(
               width: double.infinity,
               child: ElevatedButton(
                 onPressed: (){
                   addTwoNumber();
                 },
                 style: addButtonStyle(),
                 child: const Text('Add'),
               ),
             )
          ],
        ),
      ),
    );
  }
}