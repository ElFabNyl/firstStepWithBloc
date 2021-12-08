import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state/logic/cubit/counter/counter_cubit.dart';

class SecondSreen extends StatefulWidget {
  SecondSreen({Key? key}) : super(key: key);

  @override
  _SecondSreenState createState() => _SecondSreenState();
}

class _SecondSreenState extends State<SecondSreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ecran 2'),
      ),
      body: Column(
        children: [
          const Text(
            ' WELCOME TO SCREN 2',
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20.0),
          ),
          const SizedBox(height: 40.0),
          BlocConsumer<CounterCubit, CounterState>(
            listener: (context, state) {
              // TODO: implement listener
              if (state.wasIncremented == true) {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text('was incremented on screen 2'),
                  duration: Duration(milliseconds: 300),
                ));
              } else if (state.wasIncremented==false){
                 ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text('was decremented on screen 2'),
                  duration: Duration(milliseconds: 300),
                ));
              }
            },
            builder: (context, state) {
              return Text(state.counterValue.toString());
            },
          ),
          FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add))
        ],
      ),
    );
  }
}
