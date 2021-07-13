import 'package:counter_apps/provider/couter.state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterPagev2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CounterState counterState= Provider.of<CounterState>(context,listen: false);
    return Scaffold(
        appBar: AppBar(title: Text('Counter V2',style: TextStyle(fontSize: 28),),),
        body: Center(
          child: Consumer<CounterState>(
            builder: (context,CounterState cs,child){
              return Text('Counter Value => ${cs.counter}');
            },
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                counterState.decrement();
              },
              child: Icon(Icons.remove),
            ),
            SizedBox(width:20),
            FloatingActionButton(
              onPressed: () {
                counterState.increment();
              },
              child: Icon(Icons.add),
            ),
          ],
        )
    );
  }
}
