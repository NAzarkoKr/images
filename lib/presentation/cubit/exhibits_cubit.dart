import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:images/data/model/exhibit.dart';
import 'package:images/domain/repository.dart';

part 'exhibits_state.dart';

class ExhibitsCubit extends Cubit<ExhibitsState> {
  ExhibitsCubit(this.exhibitsLoader) : super(ExhibitsInitial());
  final ExhibitsLoader exhibitsLoader;
  void getData() async {
    final List<Exhibit> exhibits;
    try {
      emit(LoadingStates());
      exhibits = await exhibitsLoader.getExhibitList();
      emit(LoadedStates(exhibits));
    } catch (e) {}
  }
}
