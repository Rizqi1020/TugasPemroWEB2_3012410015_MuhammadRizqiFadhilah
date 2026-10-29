import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:w2_muhammadrizqifadhilah/main.dart';

void main() {
  testWidgets('Profile page smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Profil'), findsOneWidget);
    expect(find.text('Rani Putri'), findsOneWidget);
    expect(find.text('NIM 2026001'), findsOneWidget);
    expect(find.byIcon(Icons.school), findsOneWidget);
  });
}
