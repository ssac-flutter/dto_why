import 'package:dio/dio.dart';
import 'package:dto_why/data/remote/api/photo_api.dart';
import 'package:dto_why/data/repository/photo_repository_impl.dart';
import 'package:dto_why/presentation/main/main_screen.dart';
import 'package:dto_why/presentation/main/main_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
        create: (_) => MainViewModel(PhotoRepositoryImpl(PhotoApi(Dio()))),
        child: const MainScreen(),
      ),
    );
  }
}
