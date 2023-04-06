import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_processing/business_logic/change_aspect_ratio/change_aspect_ratio_cubit.dart';
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
            BlocBuilder<EditStateCubit, EditStateState>(
              builder: (context, state) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: text(
                            "Rotate",
                            state is EditStateCrop
                                ? Colors.white
                                : Colors.grey)),
                    text("|", Colors.white),
                    TextButton(
                        onPressed: () {},
                        child: text(
                            "crop",
                            state is EditStateRotate
                                ? Colors.white
                                : Colors.grey))
                  ],
                );
              },
            ),
            // crop / rotate selectables
            BlocBuilder<EditStateCubit, EditStateState>(
              builder: (context, state) {
                if (state is EditStateCrop) {
                  //Image Rotation Controller
                  return Container();
                } else if (state is EditStateRotate) {
                  return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    addAutomaticKeepAlives: true,
                    addRepaintBoundaries: true,
                    addSemanticIndexes: true,
                    itemCount: cropRatio.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          // call the appropriate change aspect ratio  function
                          BlocProvider.of<ChangeAspectRatioCubit>(context)
                              .changeAspectRatio(
                                  getAppropriateAspectRatio(index));
                        },
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(cropRatio[index].image!),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            text(cropRatio[index].name!)
                          ],
                        ),
                      );
                    },
                  );
                }
                return Container();
              },
            ),
            //manipulate the actual image
            AspectRatio(
                aspectRatio: 1 / 3, child: Image.file(File(image!.path)))
          ],
        ),
      ),
    );
  }
}
