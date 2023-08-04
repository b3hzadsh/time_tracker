import 'dart:math';

import 'package:flutter/material.dart';
import 'package:time_tracker/features/spend_time_recorder/presentation/widgets/category_widget.dart';

class DayTimeBlock extends StatelessWidget {
  const DayTimeBlock({super.key});

  @override
  Widget build(BuildContext context) {
    const TimeOfDay timeCounter = TimeOfDay(hour: 0, minute: 0);
    // 00:00 mean 12:00 am
    return ListView.separated(
      itemCount: 24,
      separatorBuilder: (context, index) {
        return const Divider(thickness: 0.9,height: 5);
        // the height is important for padding stuff 
      },
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 8),
          child: HourTimeBlock(
            categoryText: ranadomCat(),
            text: 'test for text of hour block',
            time: TimeOfDay(
              hour: timeCounter.hour + index + 1,
              minute: 0,
            ),
          ),
        );
      },
    );
  }

  doUsecaseGetTheData() {
    /// Get all data of a day and cache it some where.
    /// then read the cache to create every block.
    /// but here we just run a cubit function
    return 'hi its test text for a hour';
  }

  String ranadomCat() {
    List<String> eith = [
      'shopping',
      'cleaning',
      'reading',
      'excersice',
      'sport',
      'sex',
      'TV',
      'work',
      'educate',
    ];
    eith.shuffle();
    Random rand = Random(313);
    return eith[rand.nextInt(8)];
  }
}

class HourTimeBlock extends StatelessWidget {
  final TimeOfDay time;
  final Color? categoryColor;
  final String? text, categoryText;
  const HourTimeBlock({
    required this.time,
    this.categoryColor,
    this.categoryText,
    this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 2,
          child: Text(
            "${addAZeroWhenNeeded(time.hour - 1)}\n${addAZeroWhenNeeded(time.hour)}",
            style: Theme.of(context)
                .textTheme
                .displaySmall!
                .copyWith(fontSize: 15),
          ),
        ),
        Expanded(
          flex: 12,
          child: Text(
            text ?? "",
            //todo cut the text if its too long
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        Expanded(
          flex: 4,
          child: CategoryWidget(
            color:
                categoryColor ?? Theme.of(context).textTheme.bodyLarge!.color!,
            title: categoryText ?? "",
          ),
        ),
      ],
    );
  }

  String addAZeroWhenNeeded(int hour) {
    if (hour >= 10) {
      return hour.toString();
    } else {
      return '0$hour';
    }
  }
}
