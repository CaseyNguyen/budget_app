// buttons.dart
// Created by Casey Nguyen
// VERSION CONTROL:
// 8.18.2023 - Created to display buttons for creating transactions.
// 8.20.2023 - Updated to match final design (solid color).

import 'package:budge/add_form.dart';
import 'package:flutter/material.dart';

class TransactionButton extends StatelessWidget{
  const TransactionButton({super.key});
  @override
  Widget build(BuildContext context){
    double screenWidth = MediaQuery.of(context).size.width;
    return Wrap(
      alignment: WrapAlignment.center,
      children:[
        Container(
          width: screenWidth / 2,
          color: Colors.green,
          child: TextButton(
            child: const Icon(Icons.add, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const IncomeForm()),
              );},
          ),
        ),
        Container(
          width: screenWidth / 2,
          color: Colors.red,
          child: TextButton(
              child: const Icon(Icons.remove, color: Colors.white),
              onPressed: () {},
              ),
          ),
      ]
    );
  }
}