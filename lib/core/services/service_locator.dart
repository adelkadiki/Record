import 'package:get_it/get_it.dart';
import 'package:record/core/database/cache/cache_processor.dart';
import 'package:record/features/auth/cubit/auth_cubit.dart';

final getIt = GetIt.instance;

void serviceLocator() {
  getIt.registerSingleton<CacheProcessor>(CacheProcessor());
  getIt.registerSingleton<AuthCubit>(AuthCubit());
}
