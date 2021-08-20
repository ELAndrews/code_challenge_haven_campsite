import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:haven_campsite/core/data/repositories/core_repository.dart';
import 'package:haven_campsite/features/overview/domain/bloc/core_bloc.dart';
import 'package:haven_campsite/features/overview/presentation/fragments/camp_map/camp_map_fragment.dart';
import 'package:haven_campsite/features/overview/presentation/fragments/results_fragment.dart/results_fragment.dart';

class OverviewScreen extends StatefulWidget {
  @override
  _OverviewScreenState createState() => _OverviewScreenState();
}

class _OverviewScreenState extends State<OverviewScreen> {
  CoreRepository coreRepository = CoreRepository();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CoreBloc>(
      create: (_) =>
          CoreBloc(coreRepository)..add(CoreBlocEventLoadRequested()),
      child: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (MediaQuery.of(context).size.width < 600) {
              return ResultsFragment();
            } else {
              return Row(
                children: [
                  Expanded(
                    child: ResultsFragment(),
                  ),
                  const SizedBox(width: 40),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      minWidth: 400,
                    ),
                    child: CampMapFragment(),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
