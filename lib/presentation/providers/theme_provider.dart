import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgetsapp/config/theme/theme_app.dart';

//Listado de colores inmutables
final colorListProvider = Provider((ref) => colorList);

//Un simple boolean
final isDarkModeProvider = StateProvider<bool>((ref) => true);

//Un simple Int
final selectedColorProvider = StateProvider<int>((ref) => 0);