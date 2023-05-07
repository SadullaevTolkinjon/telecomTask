
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_architecture/presentation/home/cubit/home_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register page"),
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Login'),
          onPressed: () => BlocProvider.of<HomeCubit>(context).regester(),
        ),
      ),
    );
  }
}