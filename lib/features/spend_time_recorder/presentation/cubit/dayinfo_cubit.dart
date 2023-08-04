import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:time_tracker/features/spend_time_recorder/domain/usecases/get_start_end_date_usecase.dart';

part 'dayinfo_state.dart';

class DayinfoCubit extends Cubit<DayinfoState> {
  final DateTime exactDate;
  final GetStartEndDate_Usecase getStartEndDate_Usecase =
      GetStartEndDate_Usecase();

  DayinfoCubit({
    required this.exactDate,
  }) : super(const DayinfoLoadingState()) {
    getStartEndDate_Usecase(
      GetStartEndDateParams(
        exactDate: exactDate,
      ),
    ).then(
      (value) {
        value.fold(
          (l) => emit(
            const DayinfoErrorState(),
          ), //todo make sure you handle all errors and failures
          (r) {
            emit(
              DayinfoInitial(
                exactDate: exactDate,
                startDate: r.startDate,
                endDate: r.endDate,
              ),
            );
          },
        );
      },
    );

    // emit()
  }
}
