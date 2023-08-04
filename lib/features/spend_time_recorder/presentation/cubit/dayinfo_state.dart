part of 'dayinfo_cubit.dart';

abstract class DayinfoState extends Equatable {
  const DayinfoState();

  @override
  List<Object> get props => [];
}

class DayinfoInitial extends DayinfoState {
  final DateTime exactDate, startDate, endDate;

  const DayinfoInitial({
    required this.exactDate,
    required this.startDate,
    required this.endDate,
  });
  @override
  List<Object> get props => [];
}

class DayinfoLoadingState extends DayinfoState {
  const DayinfoLoadingState();
  @override
  List<Object> get props => [];
}

class DayinfoErrorState extends DayinfoState {
  const DayinfoErrorState();
  @override
  List<Object> get props => [];
}
