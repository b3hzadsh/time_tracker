import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_date_picker_timeline/flutter_date_picker_timeline.dart';

import '../cubit/dayinfo_cubit.dart';
import '../widgets/day_view.dart';

class DayInfoWrapperProvider extends StatelessWidget {
  final DateTime dateTime;
  const DayInfoWrapperProvider({super.key, required this.dateTime});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DayinfoCubit(exactDate: dateTime),
      child: DayInfoPage(dateTime: dateTime),
    );
  }
}

class DayInfoPage extends StatelessWidget {
  final DateTime dateTime;
  const DayInfoPage({super.key, required this.dateTime});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text('Day info Page'),
            Text(dateTime.toString()),
            BlocBuilder<DayinfoCubit, DayinfoState>(
              builder: (context, state) {
                if (state is DayinfoInitial) {
                  return FlutterDatePickerTimeline(
                    startDate: state.startDate,
                    endDate: state.endDate,
                    unselectedItemMargin:
                        const EdgeInsets.only(right: 1.5, left: 1.5),
                    selectedItemWidth: 155,
                    selectedItemMargin:
                        const EdgeInsets.only(right: 1.75, left: 1.75),
                    unselectedItemWidth: 38,
                    listViewPadding:
                        const EdgeInsets.only(right: 1.0, left: 1.0),
                    initialSelectedDate: dateTime,
                    calendarMode: CalendarMode.jalali,
                    onSelectedDateChange: (_) {},
                  );
                }
                return Container();
              },
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
                child: DayTimeBlock(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
