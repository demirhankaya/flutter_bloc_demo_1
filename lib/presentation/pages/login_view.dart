import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_demo_1/core/extensions/l10n_x.dart';
import 'package:flutter_bloc_demo_1/presentation/cubits/colors_cubit.dart';
import 'package:flutter_bloc_demo_1/presentation/cubits/counter_cubit.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _bodyView(),
      floatingActionButton: _floatingButton(),
    );
  }
}

class _floatingButton extends StatelessWidget {
  const _floatingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            context.read<CounterCubit>().increment();
            context.read<ColorsCubit>().changeColor();
          },
        ),
        SizedBox(
          height: 20,
        ),
        FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: () => context.read<CounterCubit>().decrement()),
      ],
    );
  }
}

class _bodyView extends StatelessWidget {
  const _bodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, int>(
      builder: (context, count) => Center(
        child: BlocBuilder<ColorsCubit, Color>(
          builder: (context, cubitColor) => Text(
            context.translate.counterValue(count),
            style: TextStyle(color: cubitColor),
          ),
        ),
      ),
    );
  }
}
