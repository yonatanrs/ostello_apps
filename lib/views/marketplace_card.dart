import 'package:flutter/material.dart';
import 'package:ostello_apps/models/marketplace_model.dart';

class MarketplaceCard extends StatelessWidget {
  final MarketplaceModel marketplaceItem;

  MarketplaceCard({required this.marketplaceItem});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(marketplaceItem.icon),
        title: Text(marketplaceItem.title),
        subtitle: Text(marketplaceItem.description),
      ),
    );
  }
}
