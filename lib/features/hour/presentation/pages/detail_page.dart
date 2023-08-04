import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/add_detail_cubit.dart';

class DetailWrapperProvider extends StatelessWidget {
  final DateTime dateTime;
  const DetailWrapperProvider({super.key, required this.dateTime});

  @override
  Widget build(BuildContext context) {
    return const AddDetailPage();
  }
}

class AddDetailPage extends StatelessWidget {
  const AddDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Text('Add detail Page'),
            BlocBuilder<AddDetailCubit, AddDetailState>(
              builder: (context, state) {
                return Container();
              },
            )
          ],
        ),
      ),
    );
  }
}
