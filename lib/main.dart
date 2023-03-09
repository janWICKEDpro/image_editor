import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_processing/business_logic/cubits/cubit/pick_image_cubit.dart';
import 'package:image_processing/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        title: "Image processing",
        home: BlocProvider(
          create: (context) => PickImageCubit(),
          child: HomeScreen(),
        ));
  }
}
