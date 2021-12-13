import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state/logic/cubit/counter/counter_cubit.dart';
import 'package:state/logic/cubit/internet/internet_cubit.dart';

import 'package:state/router/app_router.dart';

import 'logic/cubit/color/cubit/color_cubit.dart';

void main() {
  runApp(MyApp(appRouter: AppRouter(), connectivity: Connectivity()));
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;
  final Connectivity connectivity;

  MyApp({Key? key, required this.appRouter, required this.connectivity})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => CounterCubit(
            internetCubit: InternetCubit(connectivity: connectivity),
          ),
        ),
        BlocProvider(
          create: (_) => InternetCubit(connectivity: connectivity),
        ),
        BlocProvider(create: (_) => ColorCubit())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        onGenerateRoute: appRouter.onGenerateRoute,
      ),
    );
  }
}
