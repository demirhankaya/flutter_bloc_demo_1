import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_demo_1/presentation/cubits/colors_cubit.dart';
import 'package:flutter_bloc_demo_1/presentation/cubits/counter_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'core/core.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CounterCubit(),
        ),
        BlocProvider(
          create: (context) => ColorsCubit(),
        )
      ],
      child: MaterialApp.router(
        routerConfig: appRouter,

        /// [L10n]
        /// Delegate: Temsilci Listesi
        localizationsDelegates: AppLocalizations.localizationsDelegates,

        /// Desteklenen Diller
        supportedLocales: AppLocalizations.supportedLocales,
      ),
    );
  }
}
