import 'package:example_theme/style/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: const HomeWidget(),
      theme: customTheme
    ),
  );
}

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  int count = 0;
  
  @override
  Widget build(BuildContext context) {
    // final textTheme = Theme.of(context).textTheme;
    final textTheme = customTheme.textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Theme'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Press Count', style: textTheme.bodyMedium,),
            Text('$count', style: textTheme.bodyLarge),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
        },
      ),
    );
  }
}
