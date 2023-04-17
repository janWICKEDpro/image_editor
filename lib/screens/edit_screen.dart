import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_processing/business_logic/change_aspect_ratio/change_aspect_ratio_cubit.dart';
import 'package:image_processing/business_logic/pick_image/pick_image_cubit.dart';
import 'package:image_processing/constants/constants.dart';
import '../business_logic/change_aspect_ratio/change_aspect_ratio_state.dart';
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
            backgroundBlendMode: BlendMode.darken, color: Colors.white),
        child: SingleChildScrollView(
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
                        color: Colors.black,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.save_alt_outlined,
                        color: Colors.black,
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
                        onPressed: () {
                          BlocProvider.of<EditStateCubit>(context)
                              .ediStateRotate();
                        },
                        child: text(
                            "Rotate",
                            state is EditStateRotate
                                ? Colors.black
                                : Colors.grey),
                      ),
                      text("|", Colors.black),
                      TextButton(
                        onPressed: () {
                          BlocProvider.of<EditStateCubit>(context)
                              .editStateCrop();
                        },
                        child: text(
                            "crop",
                            state is EditStateCrop
                                ? Colors.black
                                : Colors.grey),
                      ),
                    ],
                  );
                },
              ),
              BlocBuilder<EditStateCubit, EditStateState>(
                builder: (context, state) {
                  if (state is EditStateCrop) {
                    //Image Rotation Controller
                    return Container();
                  } else if (state is EditStateRotate) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/frame.ico'),
                                  ),
                                ),
                              ),
                              text('Original'),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/free.ico'),
                                  ),
                                ),
                              ),
                              text('Free')
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/square.ico'),
                                  ),
                                ),
                              ),
                              text('Square')
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/rectangle.ico'),
                                  ),
                                ),
                              ),
                              text('1:3')
                            ],
                          ),
                        )
                      ],
                    );
                  }
                  return Container();
                },
              ),
              BlocBuilder<ChangeAspectRatioCubit, ChangeAspectRatioState>(
                builder: (context, state) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: AspectRatio(
                      aspectRatio: state.aspectRatio!,
                      child: Image.file(
                        File(image!.path),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
