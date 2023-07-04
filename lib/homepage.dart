import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerapp/counterlistener.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CounterProvider>(
      create: (context) => CounterProvider(),
      child: const HomePageUI(),
    );
  }
}

class HomePageUI extends StatelessWidget {
  const HomePageUI({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App"),
      ),
      body: Center(
        child: Consumer<CounterProvider>(
          builder: (context, value, child) => Text(
            "${value.counter}",
            style: const TextStyle(fontSize: 30),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<CounterProvider>(context, listen: false).increse();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
