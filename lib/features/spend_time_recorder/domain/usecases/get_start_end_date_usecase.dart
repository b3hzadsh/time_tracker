import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:time_tracker/core/error/failure.dart';
import 'package:time_tracker/core/services/date_service.dart';
import 'package:time_tracker/core/usecase/usecase.dart';
import 'package:time_tracker/features/show_calendar/domain/usecases/go_to_detail_page.dart';

// Future<Either<Failure, DateContainer>>
// Future<Either<Failure, DateContainer>?>
class GetStartEndDate_Usecase
    implements UseCase<DateContainer, GetStartEndDateParams> {
  final DateService dateService = DateService();
  @override
  Future<Either<Failure, DateContainer>> call(params) async {
    return Right(dateService.findStartAndEndDate(params.exactDate));
  }
}

class GetStartEndDateParams extends Equatable {
  final DateTime exactDate;

  const GetStartEndDateParams({required this.exactDate});
  @override
  List<Object?> get props => [exactDate];
}
