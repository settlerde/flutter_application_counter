import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const MyHomePage(title: 'Flutter '),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title, this.color = Colors.red});
  final String title;
  final Color color;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    _counter--;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            const Text('You have pushed the button this many times:'),
            Row(
              children: [
                ElevatedButton(onPressed: _incrementCounter, child: Text('+')),
                ElevatedButton(onPressed: _decrementCounter, child: Text("-")),
              ],
            ),
            Row(
              children: [
                ElevatedButton(onPressed: _incrementCounter, child: Text('+')),
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                ElevatedButton(onPressed: _decrementCounter, child: Text("-")),
              ],
            ),
            Row(
              children: [
                ElevatedButton(onPressed: _incrementCounter, child: Text('+')),
                ElevatedButton(onPressed: _decrementCounter, child: Text("-")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
