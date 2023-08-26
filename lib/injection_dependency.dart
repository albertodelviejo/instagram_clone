import 'package:get_it/get_it.dart';
import 'package:instagram_clone/features/login/presentation/cubit/login_cubit.dart';

final sl = GetIt.instance;

init() {
  sl.registerFactory<LoginCubit>(() => LoginCubit());
}
