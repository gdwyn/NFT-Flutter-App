import 'package:bloc/bloc.dart';
import 'package:yt_tutorial_nft/cubit/app_cubits_states.dart';

class AppCubits extends Cubit<CubitStates> {
  AppCubits() : super(InitialState()) {
    emit(WelcomeState());
  }
}
