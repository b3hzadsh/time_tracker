import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker/features/dashboard/domain/usecases/go_to_detail_page.dart';

part 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  GoToDetailPage_Usecase goToDetailPage_Usecase = GoToDetailPage_Usecase();

  DashboardCubit() : super(DashboardShowCalendarState());
  void goToDaySheet(BuildContext context, DateTime dateTime) {
    final params = GoDetailPageParams(
      context: context,
      dateTime: dateTime,
    );
    goToDetailPage_Usecase(params);
  }
}
