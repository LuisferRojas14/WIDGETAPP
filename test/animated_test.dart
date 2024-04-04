import 'package:flutter_test/flutter_test.dart';
import 'package:widgetsapp/presentation/screens/screens.dart';

void main() {
  testWidgets('AnimatedScreen cambia de forma al presionar el botón flotante',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: AnimatedScreen(),
      ),
    );

    // Verifica que el contenedor tenga la forma inicial antes de presionar el botón
    expect(find.byType(AnimatedContainer), findsOneWidget);
    expect(find.byType(AnimatedContainer), findsOneWidget);
    expect(find.byType(AnimatedContainer), findsOneWidget);

    // Presiona el botón flotante
    await tester.tap(find.byType(FloatingActionButton));
    await tester.pump();

    // Verifica que la forma del contenedor haya cambiado después de presionar el botón
    expect(find.byType(AnimatedContainer), findsOneWidget);
    expect(find.byType(AnimatedContainer), findsOneWidget);
    expect(find.byType(AnimatedContainer), findsOneWidget);
  });
}
