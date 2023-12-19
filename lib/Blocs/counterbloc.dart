import 'package:counter_app_bloc/Blocs/events.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent,int>{
  CounterBloc():super(0){
    on<Increment>((event,emit){
      emit(state+1);
    });
    on<Decrement>((event,emit){
      emit(state-1);
    });
  }
}