import 'package:flutter_bloc/flutter_bloc.dart';

class MaleChartCubit extends Cubit<int> {
  MaleChartCubit(int state) : super(state);

  update({int value}) {
    emit(value);
  }

  String percentage({int female}) {
    return ((state / (state + female)) * 100).toStringAsFixed(3);
  }
}

class FemaleChartCubit extends Cubit<int> {
  FemaleChartCubit(int state) : super(state);

  update({int value}) {
    emit(value);
  }

  String percentage({int male}) {
    return ((state / (state + male)) * 100).toStringAsFixed(3);
  }
}
