import 'package:counter_app_bloc/Blocs/counterbloc.dart';
import 'package:counter_app_bloc/Blocs/events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterBloc,int>(
       builder: (context,state){
         return Scaffold(
           appBar: AppBar(
             title: Text("Counter App"),
             centerTitle: true,
           ),
           body: Center(child: Text("${state}"),),
           floatingActionButton: FloatingActionButton(onPressed: (){context.read<CounterBloc>().add(Increment());},child: Icon(Icons.add),),
         );
       },
    );
  }
}
