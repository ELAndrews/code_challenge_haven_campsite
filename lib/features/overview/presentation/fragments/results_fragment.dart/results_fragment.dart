import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:haven_campsite/features/overview/domain/bloc/core_bloc.dart';
import 'package:haven_campsite/features/overview/presentation/components/group_overview/group_overview.dart';

class ResultsFragment extends StatefulWidget {
  @override
  _ResultsFragmentState createState() => _ResultsFragmentState();
}

class _ResultsFragmentState extends State<ResultsFragment> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CoreBloc, CoreBlocState>(
      builder: (context, state) {
        if (state is CoreBlocStateSuccess) {
          return CustomScrollView(
            scrollDirection: Axis.vertical,
            slivers: [
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    if (index == 0) {
                      return this.headerPanel();
                    } else {
                      return GroupOverview(
                        group: state.groups[index - 1],
                      );
                    }
                  },
                  childCount: state.groups.length + 1,
                ),
              ),
            ],
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }

  Widget headerPanel() {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.blueGrey,
            width: 1.0,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Daily Overview',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 10),
            Text('Group summaries'),
            const SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
