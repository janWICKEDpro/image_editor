import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_processing/business_logic/cubits/cubit/pick_image_cubit.dart';
import 'package:image_processing/constants/constants.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({super.key});

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  @override
  Widget build(BuildContext context) {
    final image = BlocProvider.of<PickImageCubit>(context).state.image;

    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          backgroundBlendMode: BlendMode.darken,
          color: Color.fromARGB(255, 10, 8, 8)),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.cancel_outlined,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.save_alt_outlined,
                    color: Colors.white,
                  )),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              TextButton(onPressed: () {}, child: text("Rotate")),
              TextButton(onPressed: () {}, child: text("crop"))
            ],
          ),
          // crop / rotate selectables
          Container(
            height: 30,
            color: Colors.red,
          ),

          Container(
            child: Image.file(File(image!.path)),
          )
        ],
      ),
    );
  }
}
