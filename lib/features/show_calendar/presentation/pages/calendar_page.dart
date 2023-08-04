import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jalali_table_calendar/jalali_table_calendar.dart';
import 'package:time_tracker/features/show_calendar/presentation/cubit/dashboard_cubit.dart';

class ShowCalendarWrapperProvider extends StatelessWidget {
  const ShowCalendarWrapperProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DashboardCubit>(
      create: (context) => DashboardCubit(),
      child: const CalendarPage(),
    );
  }
}

class CalendarPage extends StatelessWidget {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            JalaliTableCalendar(
              context: context,
              onDaySelected: (date) {
                // Navigator.of(context).pushNamed('/screens/day-info/2023/4/4');
                context.read<DashboardCubit>().goToDaySheet(context, date);
              },
            ),
            BlocBuilder<DashboardCubit, DashboardState>(
              builder: (context, state) {
                DateTime today = DateTime.now();
                return Container();
              },
            ),
          ],
        ),
      ),
    );
  }
}
