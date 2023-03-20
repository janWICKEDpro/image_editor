part of 'edit_state_cubit.dart';

@immutable
abstract class EditStateState {}

class EditStateInitial extends EditStateState {}

class EditStateCrop extends EditStateState {}

class EditStateRotate extends EditStateState {}
