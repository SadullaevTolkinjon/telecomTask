part of 'home_cubit.dart';

abstract class HomeState {}

@freezed
class HomeBuildable extends HomeState with _$HomeBuildable {
  const factory HomeBuildable({
    @Default(false) bool loading,
    @Default(false) bool success,
    @Default(false) bool failed,
    dynamic error,
  }) = _HomeBuildable;
}

class SuccessfullRegisteredState extends HomeState {}
