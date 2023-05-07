import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:new_architecture/domain/repository/auth/auth_repository.dart';
import 'package:new_architecture/presentation/widgets/buildable_cubit.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';
@Injectable()
class HomeCubit extends BuildableCubit<HomeState, HomeBuildable> {
  HomeCubit(this._authRepository) : super(const HomeBuildable());
  final AuthRepository _authRepository;
  regester() async {
    build((buildable) => buildable.copyWith(failed: false));
    try {
      await _authRepository.login();
     emit(SuccessfullRegisteredState());
    } catch (e) {
      build(
        (buildable) => buildable.copyWith(failed: true, error: e.toString()),
      );
    }
  }
}
