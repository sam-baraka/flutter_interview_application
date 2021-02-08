import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_interview_test/cubits/chart_cubit.dart';
import 'package:flutter_interview_test/cubits/select_team_cubit.dart';
import 'package:flutter_interview_test/home.dart';

import 'blocs/simple_bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = SimpleBlocObserver();
  runApp(InterviewApp());
}

class InterviewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SelectTeamCubit>(create: (context) => SelectTeamCubit(0)),
        BlocProvider<MaleChartCubit>(create: (context) => MaleChartCubit(0)),
        BlocProvider<FemaleChartCubit>(
            create: (context) => FemaleChartCubit(0)),
      ],
      child: MaterialApp(
        home: Home(),
      ),
    );
  }
}
