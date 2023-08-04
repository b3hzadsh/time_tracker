import 'package:flutter_test/flutter_test.dart';
import 'package:time_tracker/core/services/date_service.dart';

void main() {
  late DateService dateService;
  setUp(() {
    dateService = DateService();
  });

  group('time service check', () {
    test(
      "find start and end date in jalali Date ",
      () async {
        // arrang
        DateTime dt = DateTime.now();
        // act
        final res = dateService.findStartAndEndDate(dt, 'JALALI');
        DateTime stDate = res.startDate;
        DateTime endDate = res.endDate;
        // assert
        expect(
          stDate.copyWith(
            hour: 0,
            minute: 0,
            second: 0,
            millisecond: 0,
            microsecond: 0,
          ),
          DateTime(2023, 7, 29),
        );
        expect(
          endDate.copyWith(
            hour: 0,
            minute: 0,
            second: 0,
            millisecond: 0,
            microsecond: 0,
          ),
          DateTime(2023, 8, 4),
        );
      },
    );
  });
}
