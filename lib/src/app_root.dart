import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/edeka_screen_cubit.dart';
import '../screens/edekawithcubit/edeka_screen_with_cubit.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) => EdekaScreenCubit())
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: EdekaScreenWithCubit(),
      ),
    );
  }
}
