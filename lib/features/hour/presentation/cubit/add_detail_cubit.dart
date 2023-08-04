import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'add_detail_state.dart';

class AddDetailCubit extends Cubit<AddDetailState> {
  AddDetailCubit() : super(AddDetailInitial());
}
