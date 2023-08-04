import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker/core/error/failure.dart';
import 'package:time_tracker/core/usecase/usecase.dart';

class GoToDayInfoPage_Usecase implements UseCase<void, GoDayInfoPageParams> {
  @override
  Future<Either<Failure, dynamic>?> call(params) async {
    final String postfix =
        "${params.dateTime.year}/${params.dateTime.month}/${params.dateTime.day}";
    final xx = await Navigator.of(params.context).pushNamed(
      '/screens/day-info/$postfix',
    );
    // '/screens/set-detail-of-a-day/y/m/d' this date is in gregorian we convert it when its neccesarry
    return Right(xx);
  }
}

class GoDayInfoPageParams extends Equatable {
  final DateTime dateTime;
  final BuildContext context;

  const GoDayInfoPageParams({
    required this.dateTime,
    required this.context,
  });

  @override
  List<Object?> get props => [];
}
