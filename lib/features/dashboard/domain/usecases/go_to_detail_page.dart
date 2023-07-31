import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker/core/error/failure.dart';
import 'package:time_tracker/core/usecase/usecase.dart';

class GoToDetailPage_Usecase implements UseCase<void, GoDetailPageParams> {
  @override
  Future<Either<Failure, dynamic>?> call(params) async {
    final String postfix =
        "${params.dateTime.year}/${params.dateTime.month}/${params.dateTime.day}";
    return Right(
      await Navigator.of(params.context).pushNamed(
        '/screens/set-detail-of-a-day/$postfix',
      ),
      // '/screens/set-detail-of-a-day/y/m/d' this date is in gregorian we convert it when its neccesarry
    );
  }
}

class GoDetailPageParams extends Equatable {
  final DateTime dateTime;
  final BuildContext context;

  const GoDetailPageParams({
    required this.dateTime,
    required this.context,
  });

  @override
  List<Object?> get props => [];
}
