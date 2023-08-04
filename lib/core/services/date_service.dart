class DateService {
  DateContainer findStartAndEndDate(
    DateTime dt, [
    String calendarType = 'JALALI',
  ]) {
    DateTime tempdt = dt;
    late DateTime startDate;
    late DateTime endDate;
    if (calendarType == 'JALALI') {
      // DateTime previousSaturday = dt.subtract(Duration(days: dt.weekday));
      // DateTime nextFriday = dt.add(
      //   Duration(
      //     days: DateTime.friday - date.weekday + 7,
      //   ),
      // );
      /// we are seeking date of near sat and fri
      /// wed == 3 || sat == 6 || sun == 7
      /// first thing first . finding sat,start of week
      if (dt.weekday == 6) {
        startDate = dt; // first date added
      } else {
        while (tempdt.weekday != 6) {
          tempdt = tempdt.subtract(const Duration(days: 1));
        }
        startDate = tempdt; // first date added
      }
      // find the end date fri
      if (dt.weekday == 5) {
        endDate = dt; // first date added
      } else {
        while (tempdt.weekday != 5) {
          tempdt = tempdt.add(const Duration(days: 1));
        }
        endDate = tempdt;
      }
    } else {
      /// find monday and sunday of that week
      /// we are seeking date of near mon and sun
      /// wed == 3 || sat == 6 || sun == 7
      /// first thing first . finding sat,start of week
      if (dt.weekday == 1) {
        startDate = dt; // first date added
      } else {
        while (tempdt.weekday != 1) {
          tempdt.subtract(const Duration(days: -1));
        }
        startDate = tempdt; // first date added
      }
      // find the end date fri
      if (dt.weekday == 7) {
        endDate = dt; // first date added
      } else {
        while (tempdt.weekday != 7) {
          tempdt.add(const Duration(days: 1));
        }
        endDate = tempdt;
      }
    }
    return DateContainer(endDate: endDate, startDate: startDate);
  }
}

class DateContainer {
  final DateTime startDate, endDate;

  DateContainer({required this.startDate, required this.endDate});
}
