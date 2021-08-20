import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:haven_campsite/core/data/constants/example_data/campsites.dart';
import 'package:haven_campsite/core/data/repositories/core_repository.dart';
import 'package:haven_campsite/core/domain/models/camp_site/camp_site.dart';
import 'package:haven_campsite/core/domain/models/graph/directed_graph.dart';
import 'package:haven_campsite/core/domain/models/group/group.dart';

part 'core_bloc_state.dart';
part 'core_bloc_event.dart';

// @injectable
class CoreBloc extends Bloc<CoreBlocEvent, CoreBlocState> {
  final CoreRepository coreRepository;

  CoreBloc(this.coreRepository) : super(CoreBlocStateInitial());

  @override
  Stream<CoreBlocState> mapEventToState(CoreBlocEvent event) async* {
    if (event is CoreBlocEventLoadRequested) {
      yield* this._mapCoreBlocEventLoadRequestedToState(event);
    }
  }

  Stream<CoreBlocState> _mapCoreBlocEventLoadRequestedToState(
      CoreBlocEventLoadRequested event) async* {
    yield CoreBlocStateLoading();
    try {
      List<Group> exampleGroups = await this.coreRepository.readGroups();

      int waitTime = 0;

      for (Group group in exampleGroups) {
        final List<CampSite> route = CampsiteDirectedGraph.shortestPath(
          start: campSiteGate,
          target: group.campsite,
        );

        group.setRoute = route;
        group.setJourneyDuration = route.length;
        group.setWaitTime = waitTime + route.length;

        waitTime += route.length * 2;
      }

      double averageWaitTime = waitTime / exampleGroups.length;

      yield CoreBlocStateSuccess(
        groups: exampleGroups,
        averageWaitTime: averageWaitTime,
      );
    } catch (error) {
      yield CoreBlocStateFailure();
    }
  }
}
