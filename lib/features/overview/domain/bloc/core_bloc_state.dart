part of 'core_bloc.dart';

abstract class CoreBlocState extends Equatable {
  @override
  List<Object> get props => [];
}

class CoreBlocStateInitial extends CoreBlocState {}

class CoreBlocStateLoading extends CoreBlocState {}

class CoreBlocStateSuccess extends CoreBlocState {
  final List<Group> groups;
  final averageWaitTime;

  CoreBlocStateSuccess({required this.groups, this.averageWaitTime});

  @override
  List<Object> get props => [this.groups, this.averageWaitTime];
}

class CoreBlocStateFailure extends CoreBlocState {}
