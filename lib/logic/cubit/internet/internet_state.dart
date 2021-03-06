part of 'internet_cubit.dart';

@immutable
abstract class InternetState {}

class InternetLoading extends InternetState {
  InternetLoading();
}

class InternetConnected extends InternetState {
  final ConnectionType connectionType;

  InternetConnected({required this.connectionType});
}

class InternetDisconnected extends InternetState {}
