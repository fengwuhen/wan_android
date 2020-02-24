import 'package:flutter/material.dart';
import 'package:base_library/index.dart';
import 'package:wan_android/configs/host_config.dart';
import 'package:wan_android/services/wan_service.dart';

import 'models/banner_model.dart';

void main() async {
  await LogUtil.init();
  // await SpUtil.getInstance();
  await DioManager.init(baseUrl: HostConfig.BASE_HOST);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WanAndroid',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('WanAndroid'),
        ),
        body: Center(
          child: FlatButton(
              onPressed: () {
                WanService.getBannerList((List<BannerModel> list) {
                  for (var item in list) {
                    LogUtil.writeLog(item.title);
                  }
                });
              },
              child: Text('data')),
        ),
      ),
    );
  }
}
