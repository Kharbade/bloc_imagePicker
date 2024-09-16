import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker1/bloc/image_picker_bloc.dart';
import 'package:image_picker1/bloc/image_picker_event.dart';
import 'package:image_picker1/bloc/image_picker_state.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Picker"),
        centerTitle: true,
      ),
      body: Center(
        child: BlocBuilder<ImagePickerBloc, ImagePickerState>(
          builder: (context, state) {
            if (state.file == null) {
              return InkWell(
                onTap: () {
                  context.read<ImagePickerBloc>().add(CameraPicker());
                },
                child: const CircleAvatar(
                  child: Icon(Icons.camera),
                ),
              );
            } else {
              return Image.file(File(state.file!.path.toString()));
            }
          },
        ),
      ),
    );
  }
}
