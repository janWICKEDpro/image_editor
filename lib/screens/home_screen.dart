import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_processing/business_logic/cubits/cubit/pick_image_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PickImageCubit(),
      child: BlocListener<PickImageCubit, PickImageState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 133, 28, 28),
            title: const Text("Image Editor"),
            centerTitle: true,
          ),
          body: Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  BlocProvider.of<PickImageCubit>(context).pickImageGallery();
                },
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage("assets/images/gallery3.ico")),
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 245, 243, 243)
                                  .withOpacity(0.8),
                              offset: const Offset(-6.0, -6.0),
                              blurRadius: 16.0,
                            ),
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              offset: const Offset(6.0, 6.0),
                              blurRadius: 16.0,
                            ),
                          ],
                          color: const Color.fromARGB(255, 250, 242, 242),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text("Gallery",
                          style: TextStyle(fontFamily: 'RobotoMono'))
                    ]),
              ),
              InkWell(
                onTap: () {
                  BlocProvider.of<PickImageCubit>(context).pickImageCamera();
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage("assets/images/camera.ico")),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 245, 243, 243)
                                .withOpacity(0.8),
                            offset: const Offset(-6.0, -6.0),
                            blurRadius: 16.0,
                          ),
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            offset: const Offset(6.0, 6.0),
                            blurRadius: 16.0,
                          ),
                        ],
                        color: const Color.fromARGB(255, 250, 242, 242),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text("Camera", style: TextStyle(fontFamily: 'RobotoMono'))
                  ],
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
