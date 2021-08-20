import 'package:haven_campsite/core/data/constants/example_data/groups.dart';
import 'package:haven_campsite/core/domain/models/group/group.dart';

// For an aditional level of abstraction I would create this class as an implementation of its corrosponding interface.
// I would normally use injectable on larger projects as well.
class CoreRepository {
  // @override
  Future<List<Group>> readGroups() async {
    return ExampleGroups.all;
    // implement call to database and return data via a DTO
  }
}
