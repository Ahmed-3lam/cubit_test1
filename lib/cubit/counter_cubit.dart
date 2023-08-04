import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());


String text= "You have pushed the button this many times:";

  int counter = 0;


  void incrementCounter() {
    counter++;
    emit(CounterIncrementState());
  }




  void changeText(){
    text="Hello World";

    emit(CounterTextChangeState());

  }



  /// Loading function

  void showLoading()async{
    try{
      emit(CounterLoadingState());

      await Future.delayed(Duration(seconds: 10));
      emit(CounterSuccessState());
    }catch(e){

      print("Error");
      emit(CounterErrorState());
    }






  }


}
