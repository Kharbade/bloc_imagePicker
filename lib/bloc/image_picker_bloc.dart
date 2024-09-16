import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_picker1/bloc/image_picker_event.dart';
import 'package:image_picker1/bloc/image_picker_state.dart';
import 'package:image_picker1/utils/image_picker.dart';

class ImagePickerBloc extends Bloc<ImagePickerEvent, ImagePickerState> {
  final ImagePickerUtils imagePickerUtils;

  ImagePickerBloc(this.imagePickerUtils) : super(const ImagePickerState()) {
    on<CameraPicker>(_onCameraPicker);
  }

  void _onCameraPicker(
      CameraPicker event, Emitter<ImagePickerState> emit) async {
    final XFile? file = await imagePickerUtils.cameraCapture();
    emit(state.copyWith(file: file));
  }
}
