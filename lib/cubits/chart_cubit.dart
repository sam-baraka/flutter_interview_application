import 'package:flutter_bloc/flutter_bloc.dart';

class ChartCubit extends Cubit<ChartDetails> {
  ChartCubit(ChartDetails state) : super(state);
  update({int male, int female}) {
    emit(ChartDetails(male, female));
  }
}

class ChartDetails {
  int male;
  int female;
  ChartDetails(
    this.male,
    this.female,
  );
}
