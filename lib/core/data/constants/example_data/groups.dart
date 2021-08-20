import 'package:haven_campsite/core/data/constants/example_data/campsites.dart';
import 'package:haven_campsite/core/domain/models/group/group.dart';

class ExampleGroups {
  static List<Group> all = [
    Group(
      name: 'Group 1',
      numberOfAdults: 2,
      numberOfChildren: 2,
      numberOfDogs: 1,
      numberOfBags: 6,
      campsite: campSiteOne,
      arrivalTime: DateTime.now(),
      waitTime: 0,
    ),
    Group(
      name: 'Group 2',
      numberOfAdults: 2,
      numberOfChildren: 2,
      numberOfDogs: 1,
      numberOfBags: 6,
      campsite: campSiteEleven,
      arrivalTime: DateTime.now(),
      waitTime: 0,
    ),
    Group(
      name: 'Group 3',
      numberOfAdults: 2,
      numberOfChildren: 2,
      numberOfDogs: 1,
      numberOfBags: 6,
      campsite: campSiteFourteen,
      arrivalTime: DateTime.now(),
      waitTime: 0,
    ),
    Group(
      name: 'Group 4',
      numberOfAdults: 2,
      numberOfChildren: 2,
      numberOfDogs: 1,
      numberOfBags: 6,
      campsite: campSiteSix,
      arrivalTime: DateTime.now(),
      waitTime: 0,
    ),
    Group(
      name: 'Group 5',
      numberOfAdults: 2,
      numberOfChildren: 2,
      numberOfDogs: 1,
      numberOfBags: 6,
      campsite: campSiteThree,
      arrivalTime: DateTime.now(),
      waitTime: 0,
    ),
  ];
}
