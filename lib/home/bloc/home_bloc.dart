import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const _Initial()) {
    on<HomeEvent>((event, emit) async {
      await event.map(
        started: (e) => _onInitialState(e, emit),
      );
    });
  }

  Future<void> _onInitialState(
    _Started e,
    Emitter<HomeState> emit,
  ) async {
    emit(const HomeState.initial());
  }
}
