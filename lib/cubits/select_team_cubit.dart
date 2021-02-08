import 'package:flutter_bloc/flutter_bloc.dart';

class SelectTeamCubit extends Cubit<int> {
  SelectTeamCubit(int state) : super(state);
  select({int value}) {
    emit(value);
  }
}
