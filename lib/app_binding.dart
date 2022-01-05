import 'package:get/get.dart';
import 'package:getx_boilerplate/api/api_provider.dart';
import 'package:getx_boilerplate/api/api_repository.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() async {
    Get.put(ApiProvider(), permanent: true);
    Get.put(ApiRepository(apiProvider: Get.find()), permanent: true);
  }
}
