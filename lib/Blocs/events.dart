import 'package:flutter_bloc/flutter_bloc.dart';

abstract class CounterEvent {}

class Increment extends CounterEvent {}

class Decrement extends CounterEvent{}