import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgetsapp/config/theme/theme_app.dart';

//Listado de colores inmutables
final colorListProvider = Provider((ref) => colorList);

//Un simple boolean
final isDarkModeProvider = StateProvider<bool>((ref) => true);

//Un simple Int
final selectedColorProvider = StateProvider<int>((ref) => 0);

//Un objeto de tipo AppTheme (custom)
final themeNotifierProvide = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);
//Controller o Notifier
class ThemeNotifier extends StateNotifier<AppTheme> {
  
  //STATE = estado = now AppTheme();
  ThemeNotifier() : super(AppTheme());


  void toggleDarkmode(){
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  
  }

  void changeColorIndex(int colorIndex){

    state = state.copyWith(selectedColor: colorIndex);

  }

}