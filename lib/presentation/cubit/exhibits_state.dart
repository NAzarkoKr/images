part of 'exhibits_cubit.dart';

abstract class ExhibitsState extends Equatable {
  const ExhibitsState();

  @override
  List<Object> get props => [];
}

class ExhibitsInitial extends ExhibitsState {}

class LoadingStates extends ExhibitsState {
  @override
  List<Object> get props => [];
}

class LoadedStates extends ExhibitsState {
  const LoadedStates(this.exhibits);
  final List<Exhibit> exhibits;
  @override
  List<Object> get props => [exhibits];
}
