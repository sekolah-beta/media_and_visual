import 'package:flutter/material.dart';
import 'package:media_and_visual/fl_chart_bar_screen.dart';
import 'package:media_and_visual/fl_chart_line_screen.dart';
import 'package:media_and_visual/fl_chart_pie_screen.dart';
import 'package:media_and_visual/fl_chart_screen.dart';
import 'package:media_and_visual/image_picker_screen.dart';
import 'package:media_and_visual/image_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/image': (context) => const ImageScreen(),
        '/image_picker': (context) => const ImagePickerScreen(),
        '/fl_chart': (context) => const FlChartScreen(),
        '/fl_chart/line': (context) => const FlChartLineScreen(),
        '/fl_chart/bar': (context) => const FlChartBarScreen(),
        '/fl_chart/pie': (context) => const FlChartPieScreen(),
      },
      title: 'Media dan Visual',
      theme: ThemeData(
        colorSchemeSeed: Colors.blue,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.w700,
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),

      // home: const HomePage(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Media dan Data Visual'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: () => Navigator.of(context).pushNamed('/image'),
              child: const Text('Image'),
            ),
            FilledButton(
              onPressed: () => Navigator.of(context).pushNamed('/image_picker'),
              child: const Text('Image Picker'),
            ),
            FilledButton(
              onPressed: () => Navigator.of(context).pushNamed('/fl_chart'),
              child: const Text('Grafik'),
            ),
          ],
        ),
      ),
    );
  }
}
