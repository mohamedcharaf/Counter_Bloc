// ignore_for_file: prefer_const_constructors

import 'package:a/shared/bloc_delegate.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'ui/counter/counter_screen.dart';

void main() {
  Bloc.observer = AppBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter Bloc',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: CounterScreen () ,
    );
  }
}
