import 'package:flutter/material.dart';
import '../models/referral_model.dart';

class ReferralCard extends StatelessWidget {
  final ReferralModel referral;

  ReferralCard({required this.referral});

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
