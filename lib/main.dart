import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker1/bloc/image_picker_bloc.dart';
import 'package:image_picker1/utils/image_picker.dart';
import 'package:image_picker1/view/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ImagePickerBloc(ImagePickerUtils()),
      child: const MaterialApp(
        home: MyHomePage(),
      ),
    );
  }
}
