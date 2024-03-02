import 'package:flutter/material.dart';
import '../models/quick_info_model.dart';

class QuickInfoCard extends StatelessWidget {
  final QuickInfoModel info;

  QuickInfoCard({required this.info});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(info.title),
        subtitle: Text(info.description),
      ),
    );
  }
}
