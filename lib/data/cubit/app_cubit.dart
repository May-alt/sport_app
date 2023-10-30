import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:sport_app/net_work/cache_helper.dart';
import 'package:sport_app/ui/pages/home/home.dart';
import 'package:sport_app/ui/pages/programme/programme_entraiments.dart';
import 'package:sport_app/ui/pages/rapport/rapport.dart';
import 'package:sport_app/ui/pages/setting/setting.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());

  static AppCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List Screens = [
    HomeViews(),
    EntainemtsViews(),
    RapportsViews(),
    SettingsViews(),
  ];

  void ChangeAppNavigationBar(index) {
    currentIndex = index;
    emit(changeNavigationBarState());
  }

  /************************ For Mode Of App*********************************/
  var isDark = false;

  void changeAppModeTheme({bool? modefromshared}) {
    if (modefromshared != null) {
      isDark = modefromshared;
      emit(changeAppModeState());
    } else {
      isDark = !isDark;
      CacheHelper.saveData(key: "isDark", value: isDark).then((value) {
        emit(changeAppModeState());
      });
    }
  }

//////////////////////////////////////////////////////////////

  var counter = 0;

  void countPlus(index) {
    counter = index++;

    emit(CountPlusState());
  }
}
