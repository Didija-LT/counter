import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Counter',style: TextStyle(fontSize: 28),),),
        body: Center(
          child: Text('Counter Value ${counter}',style: TextStyle(fontSize: 28),),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  --counter;
                });
                print(counter);
              },
              child: Icon(Icons.remove),
            ),
            SizedBox(width:8),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  ++counter;
                });
                print(counter);
              },
              child: Icon(Icons.add),
            ),
          ],
        )
    );
  }
}