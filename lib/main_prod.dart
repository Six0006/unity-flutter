import 'package:unity_flutter_test/flavor_configs/flavor_config.dart';
import 'package:unity_flutter_test/main_common.dart';

Future<void> main() async {
  await mainCommon(Flavor.prod);
}
