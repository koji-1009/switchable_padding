import 'package:flutter/material.dart';
import 'package:switchable_padding/switchable_padding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    _padding(double width) {
      if (width < 600) {
        return const EdgeInsets.all(0);
      } else if (width < 905) {
        return const EdgeInsets.all(16);
      } else if (width < 1440) {
        return const EdgeInsets.all(32);
      } else {
        return const EdgeInsets.all(48);
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        color: Theme.of(context).colorScheme.background,
        child: SwitchablePadding(
          padding: _padding,
          child: Container(
            color: Theme.of(context).colorScheme.surface,
            child: SwitchablePadding(
              padding: _padding,
              child: Container(
                color: Theme.of(context).colorScheme.surfaceVariant,
                child: SwitchablePadding(
                  padding: _padding,
                  child: Container(
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
