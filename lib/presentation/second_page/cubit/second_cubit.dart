import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'second_state.dart';
part 'second_cubit.freezed.dart';

class SecondCubit extends Cubit<SecondState> {
  SecondCubit() : super(SecondState.initial());
}
