import 'package:haven_campsite/core/domain/models/group/group.dart';

// Example interface I would use for abstraction.

abstract class ICoreRepository {
  Future<List<Group>> readGroups();
}
