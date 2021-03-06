import 'package:counter_apps/blocs/count.cubit.dart';
import 'package:counter_apps/config/drawer.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class CountBLCubit extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer:MyDrawer() ,
        appBar: AppBar(title: Text('Counter'),),
        body:Center(
            child: BlocBuilder<CounterCubit,int> (
              builder: (context,state)=>(
                  Text('Value :$state ',
                    style:TextStyle(
                        color: Colors.purple,
                        fontSize: 30),
                  )
              ),
            )
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              child: Icon(Icons.remove),
              onPressed: (){
                context.read<CounterCubit>().decrementer();
              },
            ),
            SizedBox(width: 10,),
            FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: (){
                context.read<CounterCubit>().incrementer();
              },
            ),
          ],
        )
    );

  }
}