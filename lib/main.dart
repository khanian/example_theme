import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: const HomeWidget(),
      theme: customTheme
    ),
  );
}

final customTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
    textTheme: const TextTheme(
        bodyLarge: TextStyle(fontWeight: FontWeight.normal, fontSize: 30)
    ),
    useMaterial3: true,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.redAccent,
    )
);

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
            Text('Press Count', style: textTheme.bodyLarge,),
            Text('$count', style: textTheme.titleLarge),
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
