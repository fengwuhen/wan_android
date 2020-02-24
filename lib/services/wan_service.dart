import 'dart:convert';

import 'package:base_library/index.dart';
import 'package:wan_android/configs/host_config.dart';
import 'package:wan_android/models/banner_model.dart';

class WanService {
  static void getBannerList(Function callback) async {
    dio.get(HostConfig.HOME_BANNER).then((response) {
      
    });
  }
}
