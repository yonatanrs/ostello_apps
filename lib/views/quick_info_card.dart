import 'package:flutter/material.dart';
import '../models/quick_info_model.dart';

class QuickInfoCard extends StatelessWidget {
  final QuickInfoModel Quickinfo;

  QuickInfoCard({required this.Quickinfo});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(Quickinfo.title),
        subtitle: Text(Quickinfo.description),
      ),
    );
  }
}
