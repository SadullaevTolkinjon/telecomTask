part of 'home_cubit.dart';
abstract class HomeState{}
@freezed
class HomeBuildable extends HomeState with _$HomeBuildable {
  const factory HomeBuildable.initial() = _Initial;
}
