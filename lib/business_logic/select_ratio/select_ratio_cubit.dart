import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_processing/business_logic/select_ratio/select_ratio_state.dart';

class SelectRatioCubit extends Cubit<SelectRatioState> {
  SelectRatioCubit() : super(InitialState());

  void selectOriginal() {
    emit(SelectOriginalState());
  }

  void selectFree() {
    emit(SelectFreeState());
  }

  void selectFirstRatio() {
    emit(SelectFirsRatioState());
  }

  void selectSecondRatio() {
    emit(SelectSecondRatioState());
  }
}
