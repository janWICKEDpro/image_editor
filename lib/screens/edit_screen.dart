import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_processing/business_logic/pick_image/pick_image_cubit.dart';
import 'package:image_processing/constants/constants.dart';

import '../business_logic/edit_state/cubit/edit_state_cubit.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({super.key});

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  @override
  Widget build(BuildContext context) {
    final image = BlocProvider.of<PickImageCubit>(context).state.image;

    return Material(
      child: Container(
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
                    onPressed: () {
                      BlocProvider.of<PickImageCubit>(context)
                          .canclePickedImage();
                    },
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
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {}, child: text("Rotate", Colors.white)),
                text("|", Colors.white),
                TextButton(onPressed: () {}, child: text("crop", Colors.white))
              ],
            ),
            // crop / rotate selectables
            BlocBuilder<EditStateCubit, EditStateState>(
              builder: (context, state) {
                if (state is EditStateCrop) {
                  return // do something 
                } else if (state is EditStateRotate) {
                  return // do something
                }
                return Container(
                  height: 30,
                  color: Colors.blue,
                );
              },
            ),
            //manipulate the actual image
            AspectRatio(aspectRatio: 0.4, child: Image.file(File(image!.path)))
          ],
        ),
      ),
    );
  }
}
