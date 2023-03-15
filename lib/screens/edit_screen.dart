import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_processing/business_logic/cubits/cubit/pick_image_cubit.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({super.key});

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  @override
  Widget build(BuildContext context) {
    final image = BlocProvider.of<PickImageCubit>(context).state;
    return Stack(
      children: [
        Expanded(
          child: Container(color: const Color.fromARGB(255, 243, 240, 240)),
        ),
      ],
    );
  }
}
