// Directed Graph being a nice package representative of dijkstra's algorithm.
// this package also allows us to apply weighted edges so that campsite connections
// which are futher than 1 minute can be accounted for.
//
// Given time, with a large project I would question whether it is worth writing a
// custom dijkstra's algorithm package so that we are not relying on its sutability
// and would allow us to apply custom conditions (path via a campsite with certain facility).

import 'package:directed_graph/directed_graph.dart';
import 'package:haven_campsite/core/data/constants/example_data/campsites.dart';
import 'package:haven_campsite/core/domain/models/camp_site/camp_site.dart';

class CampsiteDirectedGraph {
  static final graph = DirectedGraph<CampSite>(
    {
      campSiteGate: {campSiteOne},
      campSiteOne: {campSiteThirteen, campSiteTwo, campSiteGate},
      campSiteTwo: {campSiteOne, campSiteThree},
      campSiteThree: {campSiteTwo, campSiteFour},
      campSiteFour: {campSiteThree, campSiteFive},
      campSiteFive: {campSiteFour, campSiteSix},
      campSiteSix: {campSiteSeven, campSiteFive},
      campSiteSeven: {campSiteEight, campSiteSix},
      campSiteEight: {campSiteNine, campSiteFourteen, campSiteSeven},
      campSiteNine: {campSiteEight, campSiteTen},
      campSiteTen: {campSiteNine, campSiteEleven},
      campSiteEleven: {campSiteTen, campSiteTwelve},
      campSiteTwelve: {campSiteEleven, campSiteThirteen},
      campSiteThirteen: {campSiteTwelve, campSiteOne, campSiteSixteen},
      campSiteFourteen: {campSiteEight, campSiteFifteen},
      campSiteFifteen: {campSiteFifteen, campSiteSixteen},
      campSiteSixteen: {campSiteThirteen, campSiteFifteen},
    },
  );

  static shortestPath({start, target}) {
    return graph.shortestPath(start, target);
  }
}
