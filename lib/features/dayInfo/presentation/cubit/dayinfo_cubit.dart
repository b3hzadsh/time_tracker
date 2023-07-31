import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'dayinfo_state.dart';

class DayinfoCubit extends Cubit<DayinfoState> {
  DayinfoCubit() : super(DayinfoInitial());
}
