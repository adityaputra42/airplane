import 'package:airplane/model/model.dart';
import 'package:airplane/services/service.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'destination_state.dart';

class DestinationCubit extends Cubit<DestinationState> {
  DestinationCubit() : super(DestinationInitial());

  void fetchDestination() async {
    try {
      emit(DestinationLoading());

      List<DestinationModel> destinations =
          await DestinationService().fetchDestination();

      emit(DestinationSucces(destinations));
    } catch (e) {
      emit(DestinationFailed(e.toString()));
    }
  }
}
