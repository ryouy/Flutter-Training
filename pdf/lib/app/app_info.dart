import 'package:hive/hive.dart';

part 'app_info.g.dart';

@HiveType(typeId: 0)
class AppInfo extends HiveObject {
  @HiveField(0)
  bool isFirst = true;
}
