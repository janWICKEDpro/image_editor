import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'edit_state_state.dart';

class EditStateCubit extends Cubit<EditStateState> {
  EditStateCubit() : super(EditStateInitial());

  void editStateCrop() {
    emit(EditStateCrop());
  }

  void ediStateRotate() {
    emit(EditStateRotate());
  }
}
