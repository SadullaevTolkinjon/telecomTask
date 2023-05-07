import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_architecture/core/constants/route_name/navigator_const.dart';
import 'package:new_architecture/di/injection.dart';
import 'package:new_architecture/presentation/home/cubit/home_cubit.dart';
import 'package:new_architecture/presentation/home/home_view.dart';
import 'package:new_architecture/presentation/widgets/buildable.dart';
import 'package:new_architecture/presentation/widgets/snackbar_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<HomeCubit>(),
      child: BlocConsumer<HomeCubit, HomeState>(
        builder: (context, state) {
          return Buildable<HomeCubit, HomeState, HomeBuildable>(
              properties: (buildable) => [
                    buildable.loading,
                    buildable.failed,
                    buildable.success,
                    buildable.error
                  ],
              builder: (context, state) {
                if (state.failed) {
                  
                 // SnackbarWidgets.showError(context, state.error);
                }
                return const HomeView();
              });
        },
        listener: (context, state) {
          if (state is SuccessfullRegisteredState) {
            Navigator.pushNamed(context, NavigatorConst.secondPage);
          }
        },
      ),
    );
  }
}
