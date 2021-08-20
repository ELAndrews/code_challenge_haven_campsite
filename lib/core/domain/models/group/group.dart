import 'package:haven_campsite/core/domain/models/camp_site/camp_site.dart';

class Group {
  final String name;
  final int numberOfAdults;
  final int numberOfChildren;
  final int numberOfDogs;
  final int numberOfBags;
  final CampSite campsite;
  final DateTime arrivalTime;
  var waitTime;
  var journeyDuration;
  var route;

  Group({
    required this.name,
    required this.numberOfAdults,
    required this.numberOfChildren,
    required this.numberOfDogs,
    required this.numberOfBags,
    required this.campsite,
    required this.arrivalTime,
    this.waitTime,
    this.journeyDuration,
    this.route,
  });

  set setWaitTime(time) {
    this.waitTime = time;
  }

  set setJourneyDuration(time) {
    this.journeyDuration = time;
  }

  set setRoute(newRoute) {
    this.route = newRoute;
  }
}
