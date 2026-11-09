import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  List<int> numbers = [];

  void onClick() {
    setState(() {
      numbers.add(numbers.length + 1);
    });
  }

  void onClick2() {
    setState(() {
      numbers.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('click Count', style: TextStyle(fontSize: 30)),
              for (var n in numbers)
                Text('$n', style: const TextStyle(fontSize: 30)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    iconSize: 50,
                    onPressed: onClick,
                    icon: const Icon(Icons.add_box_outlined),
                  ),
                  IconButton(
                    iconSize: 50,
                    onPressed: onClick2,
                    icon: const Icon(Icons.refresh),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
