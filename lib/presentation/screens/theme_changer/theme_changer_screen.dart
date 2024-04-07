import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgetsapp/presentation/providers/theme_provider.dart';

class ThemeChangerScreen extends ConsumerWidget {
  const ThemeChangerScreen({super.key});

  static const String name = 'theme_changer_screen';

  @override
  Widget build(BuildContext context, ref) {
    final bool isDarkmode = ref.watch(isDarkModeProvider);
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Changer Screen'),
      actions: [
         IconButton(
          icon: isDarkmode 
          ? const Icon(Icons.light_mode)
          : const Icon(Icons.dark_mode_outlined),
          onPressed: (){
           ref.read(isDarkModeProvider.notifier)
           .update((state) => !state);
          },)
      ],
    ),
    body: const _ThemeChangerView(),
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView();

  @override
  Widget build(BuildContext context, ref) {

    final List<Color> colors = ref.watch(colorListProvider);
    final int select = ref.watch(selectedColorProvider);
    return ListView.builder(
      itemCount: colors.length,
      itemBuilder:(context, index){
        final Color color = colors[index];

        return RadioListTile(
          title: Text('Este color', style: TextStyle(color:color)),
          subtitle: Text('${color.value}'),
          activeColor: color,
          value: index, 
          groupValue: select,
          onChanged: (value){
            // Todo: notificar el cambio
            ref.read(selectedColorProvider.notifier).state = index;
          },
          );

      }
    );
  }
}