import 'package:sample/model/home_model.dart';
import 'package:sample/service/home_service.dart';

class HomeController {
  final List<ItemsModel> modelList = [];
  bool isLoading = false;
  ////////////// Fetch Data //////////////
  Future<void> getData() async {
    final List<ItemsModel>? result = await HomeService.getData();
    if (result != null) {
      modelList.clear();
      modelList.addAll(result);
    }
  }
}
