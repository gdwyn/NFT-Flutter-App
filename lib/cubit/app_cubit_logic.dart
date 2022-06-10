import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yt_tutorial_nft/cubit/app_cubits.dart';
import 'package:yt_tutorial_nft/cubit/app_cubits_states.dart';
import 'package:yt_tutorial_nft/pages/welcomeScreen.dart';

class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({Key? key}) : super(key: key);

  @override
  State<AppCubitLogics> createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits, CubitStates>(
        builder: (
          context,
          state,
        ) {
          if (state is WelcomeState) {
            return welcomePage();
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
