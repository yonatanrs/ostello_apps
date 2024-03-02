import 'package:flutter/material.dart';
import '../models/referral_model.dart';

class ReferralCardSwipe extends StatelessWidget {
  final ReferralModel referral;

  ReferralCardSwipe({required this.referral});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(referral.title),
        subtitle: Text(referral.description),
      ),
    );
  }
}
