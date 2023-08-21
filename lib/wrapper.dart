// wrapper.dart
// Created by Casey Nguyen
// Special thanks to FlutterTemplates
// VERSION CONTROL:
// 8.17.2023 - Created bottom navigation buttons (no functionality).
// 8.18.2023 - Updated the bottom navigation buttons.

import 'package:budge/add_form.dart';
import 'package:budge/views/buttons.dart';
import 'package:budge/views/list.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatefulWidget{
  const Wrapper({Key? key}) : super(key: key);

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper>{

  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text("Dashboard")),
        centerTitle: true,
      ),
      body: TransactionList(),
      bottomNavigationBar: const BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        child: TransactionButton(),
      )
    );
  }
}

// The list of items. When making updates, change THIS.
// NOTE: You must have at least 2 items for the app to run.
const _navItems = [
  BottomNavigationBarItem(
    icon: Icon(Icons.arrow_circle_up),
    label: "Income"
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.arrow_circle_down_rounded),
    label: "Expense"
  ),
];
