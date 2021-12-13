part of 'color_cubit.dart';

@immutable
abstract class ColorState {}

class ColorInitial extends ColorState {
  final bool isClicked;
  ColorInitial({required this.isClicked});
}
