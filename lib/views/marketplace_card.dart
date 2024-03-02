import 'package:flutter/material.dart';
import 'package:ostello_apps/models/marketplace_model.dart';

class MarketplaceCard extends StatelessWidget {
  final MarketplaceModel marketplace;

  MarketplaceCard({required this.marketplace});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(marketplace.title),
        subtitle: Text(marketplace.description),
      ),
    );
  }
}
