import 'package:flutter/material.dart';
import 'package:haven_campsite/core/domain/models/camp_site/camp_site.dart';
import 'package:haven_campsite/core/domain/models/group/group.dart';

class GroupOverview extends StatelessWidget {
  final Group group;

  const GroupOverview({
    Key? key,
    required this.group,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            Text('Group name: ${group.name}'),
            const SizedBox(height: 5),
            Text(
              'Campsite: ${group.campsite.name}',
              style: TextStyle(fontSize: 10),
            ),
            const SizedBox(height: 5),
            Text(
              'Overall Waiting Time (in mins): ${group.waitTime.toString()}',
              style: TextStyle(fontSize: 10),
            ),
            const SizedBox(height: 5),
            Text(
              'Journey Duration (in mins): ${group.journeyDuration.toString()}',
              style: TextStyle(fontSize: 10),
            ),
            const SizedBox(height: 5),
            Text(
              'Route: ${this.getRouteString()}',
              style: TextStyle(fontSize: 10),
            )
          ],
        ),
      ),
    );
  }

  String getRouteString() {
    String route = '';

    for (CampSite campSite in group.route) {
      route = route + campSite.name + ' => ';
    }

    route = route + ' Destination Reached.';

    return route;
  }
}
