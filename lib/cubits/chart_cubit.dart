import 'package:flutter_bloc/flutter_bloc.dart';

class ChartCubit extends Cubit<ChartDetails> {
  ChartCubit(ChartDetails state) : super(state);
}

class ChartDetails {
  static int male;
  static int female;
}
