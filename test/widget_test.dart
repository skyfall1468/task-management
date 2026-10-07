import 'package:flutter_test/flutter_test.dart';

import 'package:task_manager/main.dart';

void main() {
  testWidgets('app shows login screen', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Admin Login'), findsOneWidget);
    expect(find.text('Username'), findsOneWidget);
    expect(find.text('Password'), findsOneWidget);
    expect(find.text('Masuk'), findsOneWidget);
  });
}
