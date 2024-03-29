import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_processing/business_logic/pick_image/pick_image_cubit.dart';
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
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primaryColor: Colors.white,
        brightness: Brightness.light,
        appBarTheme: const AppBarTheme(
            backgroundColor: Color.fromARGB(255, 133, 27, 28)),
      ),
      home: BlocProvider(
        create: (context) => PickImageCubit(),
        child: const HomeScreen(),
      ),
    );
  }
}
