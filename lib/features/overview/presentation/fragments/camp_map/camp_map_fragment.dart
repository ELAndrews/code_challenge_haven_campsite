import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:haven_campsite/features/overview/domain/bloc/core_bloc.dart';

class CampMapFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CoreBloc, CoreBlocState>(
      builder: (context, state) {
        if (state is CoreBlocStateSuccess) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 80),
              Text(
                'Haven Camp Map',
                style: TextStyle(
                  fontSize: 20,
                  decoration: TextDecoration.none,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 400,
                decoration: BoxDecoration(color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image:
                        AssetImage('lib/assets/images/haven_campsite_map.png'),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text('Number of groups: ${state.groups.length}'),
              const SizedBox(height: 5),
              Text('Average waiting time (in mins): ${state.averageWaitTime}')
            ],
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
