import 'package:clean_architecture_tdd_course/features/number_trivia/presentation/screens/number_trivia_screen.dart';
import 'package:clean_architecture_tdd_course/injection_container.dart' as di;
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const NumberTriviaApp());
}

/// The root widget of app
class NumberTriviaApp extends StatelessWidget {
  ///  Default constructor that accepts an optional [key].
  const NumberTriviaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Number Trivia',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.green.shade800,
        appBarTheme: AppBarTheme(
          color: Colors.green.shade800,
        ),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.green.shade800,
          secondary: Colors.green.shade600,
        ),
      ),
      home: const NumberTriviaScreen(),
    );
  }
}
