import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jalali_table_calendar/jalali_table_calendar.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';
import 'package:time_tracker/features/dashboard/presentation/cubit/dashboard_cubit.dart';

class DashboardWrapperProvider extends StatelessWidget {
  const DashboardWrapperProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DashboardCubit(),
      child: const DashboardPage(),
    );
  }
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            BlocBuilder<DashboardCubit, DashboardState>(
              builder: (context, state) {
                DateTime today = DateTime.now();
                return JalaliTableCalendar(
                  context: context,
                  // add the events for each day
                  events: const {
                    // DateTime(2021, 4, 15): ['sample event', 66546],
                    // today: ['sample event'],
                    // today.add(Duration(days: 1)): [6, 5, 465, 1, 66546],
                    // today.add(Duration(days: 2)): [6, 5, 465, 66546],
                  },
                  //make marker for every day that have some events
                  // marker: (date, events) {
                  //   return Positioned(
                  //     top: -4,
                  //     left: 0,
                  //     child: Container(
                  //       decoration: BoxDecoration(
                  //         color: Theme.of(context).primaryColor,
                  //         shape: BoxShape.circle,
                  //       ),
                  //       padding: const EdgeInsets.all(6.0),
                  //       child: Text(events!.length.toString()),
                  //     ),
                  //   );
                  // },
                  onDaySelected: (date) {
                    context.read<DashboardCubit>().goToDaySheet(context, date);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
