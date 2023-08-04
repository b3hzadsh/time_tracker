import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker/features/show_calendar/domain/usecases/go_to_detail_page.dart';

part 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  /// this part of app is responsible for showing calendar
  /// after tapping any day we will go to some other page to do some other thing
  GoToDayInfoPage_Usecase goToDetailPage_Usecase = GoToDayInfoPage_Usecase();

  DashboardCubit() : super(DashboardShowCalendarState());
  void goToDaySheet(
    BuildContext context,
    DateTime dateTime,
  ) {
    print("object");
    final params = GoDayInfoPageParams(
      context: context,
      dateTime: dateTime,
    );
    goToDetailPage_Usecase(params);
  }
}
