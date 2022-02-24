import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:device_apps/device_apps.dart';

class Apps extends StatefulWidget {
  const Apps({Key? key}) : super(key: key);

  @override
  _AppsState createState() => _AppsState();
}

class _AppsState extends State<Apps> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, watch, _) {
        return Scaffold(
          appBar: AppBar(),
          body:appsInfo.when(data: (List<Application> apps))=>Gridviiew.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:4)
          ),
        );
      },
    );
  }
}

final appsProvidee = FutureProvider<List<Application>>((ref) =>
    DeviceApps.getInstalledApplications(
        includeAppIcons: true, includeSystemApps: true));
