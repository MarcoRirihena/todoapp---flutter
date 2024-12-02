import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todolist/main.dart';

void main() {
  testWidgets('Add ToDo item test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp()); // Hapus const di sini

    // Verify that our app starts with an empty ToDo list.
    expect(find.text('Tambahkan Agenda Baru!'), findsOneWidget);
    expect(find.byType(ListTile), findsNothing);

    // Enter 'New ToDo' text into the TextField.
    await tester.enterText(find.byType(TextField), 'New ToDo');
    await tester.tap(find.byIcon(Icons.add));

    // Rebuild the widget after the state has changed.
    await tester.pump();

    // Verify that the new ToDo item is displayed in the list.
    expect(find.text('New ToDo'), findsOneWidget);
  });
}
