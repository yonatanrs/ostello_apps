import 'package:flutter/material.dart';
import 'package:ostello_apps/models/service_model.dart';

class ServiceTile extends StatelessWidget {
  final ServiceModel service;

  ServiceTile({required this.service});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(service.icon),
      title: Text(service.title),
    );
  }
}
