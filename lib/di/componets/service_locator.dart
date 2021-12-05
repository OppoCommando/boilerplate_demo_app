import 'package:get_it/get_it.dart';
import 'package:my_boilerplate_demo/data/repository/app_repository.dart';
import 'package:my_boilerplate_demo/data/sharedpref/shared_preference_helper.dart';
import 'package:my_boilerplate_demo/di/module/local_module.dart';
import 'package:my_boilerplate_demo/stores/theme/theme_store.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;
Future<void> setupLocator() async {

  getIt.registerSingletonAsync<SharedPreferences>(() => LocalModule.provideSharedPreferences());

  // singletons:----------------------------------------------------------------
  getIt.registerSingleton(SharedPreferenceHelper(await getIt.getAsync<SharedPreferences>()));
  //getIt.registerSingleton<Dio>(NetworkModule.provideDio(getIt<SharedPreferenceHelper>()));

  // repository:----------------------------------------------------------------
  getIt.registerSingleton(AppRepository(
    getIt<SharedPreferenceHelper>(),
  ));

  // stores:--------------------------------------------------------------------
  getIt.registerSingleton(ThemeStore(getIt<AppRepository>()));
}
