import 'dart:collection';
import 'package:flutter_test/flutter_test.dart';
import 'package:education/templates/lab6/card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';


Widget testableWidget(){
  return MaterialApp(
    home: Scaffold(
      body: ProfileCard(
        imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZkM581fr_zlyDuXSY5RhrfQim13-iAvEhYA&s',
        name: 'testable widget',
        description: "try to test",
      ),
    ),
  );
}

void main() {
  testWidgets('ProfileCard displays correct information',
      (WidgetTester tester) async {
    // Arrange
    const imageUrl = 'data:image/jpeg;base64,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';
    const name = 'Savva';
    const description = 'Software Developer';

    // await mockNetworkImagesFor(() async => await tester.pumpWidget(
    //       const MaterialApp(
    //         home: Scaffold(
    //           body: ProfileCard(
    //             imageUrl: imageUrl,
    //             name: name,
    //             description: description,
    //           ),
    //         ),
    //       ),
    //     ),
    //   );

    expect(find.text("Savva"), findsAny);
    expect(find.text("Software Developer"), findsOneWidget);
    expect(find.byType(CircleAvatar), findsOneWidget);

    // Test using flutter test test/custom_button_test.dart
  });
}
