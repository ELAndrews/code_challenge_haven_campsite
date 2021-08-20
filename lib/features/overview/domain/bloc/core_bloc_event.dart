part of 'core_bloc.dart';

abstract class CoreBlocEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class CoreBlocEventLoadRequested extends CoreBlocEvent {}
