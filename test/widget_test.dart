import 'package:flutter_test/flutter_test.dart';

import 'package:book_cut/main.dart';

void main() {
  testWidgets('muestra la pantalla de inicio', (tester) async {
    await tester.pumpWidget(const BookCutApp());

    expect(find.text('BIENVENIDO A BOOK&CUT'), findsOneWidget);
    expect(find.text('Servicios'), findsOneWidget);
  });
}
