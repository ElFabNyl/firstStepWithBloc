import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'color_state.dart';

class ColorCubit extends Cubit<ColorState> {
  ColorCubit() : super(ColorInitial(isClicked: false));

  void changeColor1() => emit(ColorInitial(isClicked: true));
  void changeColor2() => emit(ColorInitial(isClicked: false));
}

