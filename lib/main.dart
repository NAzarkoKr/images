import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:images/data/api/repository_impl.dart';
import 'package:images/presentation/cubit/exhibits_cubit.dart';
import 'package:images/presentation/exhibits_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) => ExhibitsCubit(RestExhibitsLoader())..getData(),
        child: const ExhibitsListScreen(),
      ),
    );
  }
}
