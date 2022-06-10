import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yt_tutorial_nft/cubit/app_cubit_logic.dart';
import 'package:yt_tutorial_nft/cubit/app_cubits.dart';
import 'package:yt_tutorial_nft/pages/detail_page.dart';
import 'package:yt_tutorial_nft/pages/nav_pages/home_page.dart';
import 'package:yt_tutorial_nft/pages/nav_pages/main_page.dart';
import 'package:yt_tutorial_nft/pages/welcomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<AppCubits>(
        create: (context) => AppCubits(),
        child: AppCubitLogics(),
      ),
    );
  }
}
