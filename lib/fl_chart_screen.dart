import 'package:flutter/material.dart';

class FlChartScreen extends StatelessWidget {
  const FlChartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FLChart Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: () => Navigator.of(context).pushNamed('/fl_chart/line'),
              child: const Text('Line Chart'),
            ),
            FilledButton(
              onPressed: () => Navigator.of(context).pushNamed('/fl_chart/bar'),
              child: const Text('Bar Chart'),
            ),
            FilledButton(
              onPressed: () => Navigator.of(context).pushNamed('/fl_chart/pie'),
              child: const Text('Pie Chart'),
            ),
          ],
        ),
      ),
    );
  }
}
