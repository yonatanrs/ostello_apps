import 'package:flutter/material.dart';
import 'package:ostello_apps/models/referral_model_swipe.dart';
import '../models/referral_model.dart';

class ReferralCardSwipe extends StatelessWidget {
  final ReferralModelSwipe referralswipe;

  ReferralCardSwipe({required this.referralswipe});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(referralswipe.title),
        subtitle: Text(referralswipe.description),
      ),
    );
  }
}
