import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testmo/screen.dart';

import 'cubit/cubit.dart';
void main()async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
        return BlocProvider(
      create:(BuildContext context)=>currentcubit()..loadCSV() ,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home:app()// const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}




