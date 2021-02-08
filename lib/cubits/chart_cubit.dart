import 'package:flutter_bloc/flutter_bloc.dart';

class MaleChartCubit extends Cubit<int> {
  MaleChartCubit(int state) : super(state);

  update({int value}) {
    emit(value);
  }
}

class FemaleChartCubit extends Cubit<int> {
  FemaleChartCubit(int state) : super(state);

  update({int value}) {
    emit(value);
  }
}
