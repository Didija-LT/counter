import 'package:counter_apps/blocs/count.bloc.dart';
import 'package:counter_apps/blocs/count.cubit.dart';
import 'package:counter_apps/pages/count.page.v3.dart';
import 'package:counter_apps/pages/counter.page.dart';
import 'package:counter_apps/pages/counter.page.v2.dart';
import 'package:counter_apps/pages/counter.page.v4.dart';
import 'package:counter_apps/pages/home.pages.dart';
import 'package:counter_apps/provider/couter.state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>CounterCubit(),),
        BlocProvider(create: (context)=>CounterBloc(),)
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.lightBlue
        ),
         routes: {
           "/counter":(context)=>CounterPage(),
           "/home":(context)=>HomePage(),
           "/counterV2":(context)=>CounterPagev2(),
           "/countv3":(context)=>CountBLoC(),
           "/countv4":(context)=>CountBLCubit(),
         },
        initialRoute:"/counter",
      ),

    );
  }
}




