import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:jetwallet_arch_example/core/di/di.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit(
  asExtension: true,
  initializerName: 'init',
)
GetIt getItInit({
  String? env,
  EnvironmentFilter? environmentFilter,
}) {
  return getIt.init(
    environmentFilter: environmentFilter,
    environment: env,
  );
}

void resetGetIt<T extends Object>({
  Object? instance,
  String? instanceName,
  void Function(T)? disposingFunction,
}) {
  getIt.resetLazySingleton<T>(
    instance: instance,
    instanceName: instanceName,
    disposingFunction: disposingFunction,
  );
}
