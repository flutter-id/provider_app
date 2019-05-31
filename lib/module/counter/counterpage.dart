import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './counterblock.dart';
import './counterwidget.dart';

class CounterPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final CounterBlock counterblock = Provider.of<CounterBlock>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Provider'),
      ),
      body: Container(
        child: Center(child: Text(counterblock.counter.toString())),
      ),
      floatingActionButton: CounterWidget(),
    );
  }
}