import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './counterblock.dart';

class CounterWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final CounterBlock counterBlock = Provider.of<CounterBlock>(context);

    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton.extended(
            icon: Icon(Icons.add),
            label: Text('Tambah'),
            onPressed: () => counterBlock.increase(),
          ),
          FloatingActionButton.extended(
            icon: Icon(Icons.remove),
            label: Text('Kurang'),
            onPressed: () => counterBlock.decrease(),
          ),
        ],
      ),
    );
  }
}