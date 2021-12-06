import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state/logic/cubit/counter_cubit.dart';
import 'package:state/presentation/screen/home_screen.dart';
import 'package:state/presentation/screen/second_screen.dart';
import 'package:state/presentation/screen/third_screen.dart';

class AppRouter {
  final CounterCubit _counterCubit = CounterCubit();

  Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: _counterCubit,
                  child: const HomeScreen(title: 'titre', colors: Colors.blue),
                ));
      case '/second_screen':
        return MaterialPageRoute(builder: (_) => SecondSreen());
      case '/third_screen':
        return MaterialPageRoute(
            builder: (_) => const ThirdScreen(
                  title: 'third screen',
                  colors: Colors.green,
                ));

      default:
        return null;
    }
  }

  //since we've created  the counter cubit manually, we also have to manually close it

  void dispose() {
    _counterCubit.close();
  }
}
