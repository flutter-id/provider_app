import 'package:flutter/material.dart';
import 'package:provider_sample/module/counter/counterblock.dart';
import 'package:provider_sample/module/counter/counterpage.dart';
import 'package:provider/provider.dart';


void main() => runApp(Counter());

class Counter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CounterBlock>.value(
          notifier: CounterBlock(),
        ),
      ],
      child: MaterialApp(
        home: CounterPage(),
      ),
    );
  }
}
