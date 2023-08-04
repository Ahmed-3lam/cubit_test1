part of 'counter_cubit.dart';

@immutable
abstract class CounterState {}


class CounterInitial extends CounterState {}







/// increase counter

class CounterIncrementState extends CounterState {}



/// Change Text
class CounterTextChangeState extends CounterState {}






/// Loading
class CounterLoadingState extends CounterState {}


/// Success
class CounterSuccessState extends CounterState {}


///Error
class CounterErrorState extends CounterState {}


