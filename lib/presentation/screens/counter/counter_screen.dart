import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgetsapp/presentation/providers/theme_provider.dart';

import '../../providers/counter_provider.dart';

class CounterScreen extends ConsumerWidget {
  static const String name = 'counter_screen';

  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final int clickcounter = ref.watch(counterProvider);
    final bool isDarkmode = ref.watch(isDarkModeProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
      actions: [
        IconButton(
          icon: isDarkmode 
          ? const Icon(Icons.light_mode)
          : const Icon(Icons.dark_mode_outlined),
          onPressed: (){
            ref.read(themeNotifierProvide.notifier)
          .toggleDarkmode();
          },
        )
      ],
      ),
      body: Center(
        child: Text('Valor: $clickcounter',
        style: Theme.of(context).textTheme.titleLarge,),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterProvider.notifier).state++;
          // ref.read(counterProvider.notifier).update((state) => state + 1);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}


