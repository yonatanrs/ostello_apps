import 'package:get/get.dart';
import 'package:ostello_apps/models/appbar_model.dart';
import 'package:ostello_apps/models/service_model.dart';
import 'package:ostello_apps/models/marketplace_model.dart';
import 'package:ostello_apps/models/referral_model.dart';
import 'package:ostello_apps/models/quick_info_model.dart';


class HomeController extends GetxController {
  var topServices = <ServiceModel>[].obs;
  var marketplaceItems = <MarketplaceModel>[].obs;
  var referrals = <ReferralModel>[].obs;
  var quickInfos = <QuickInfoModel>[].obs;

  // Define a Rx<AppBarModel> for the current user
  var currentUser = Rx<AppBarModel>(
    AppBarModel(
        id: '1', // Replace with actual user id
        name: 'Rajbir', // Replace with actual user name
        location: 'Gandhinagar, Ahmedabad...' // Replace with actual user location
    ),
  );

  @override
  void onInit() {
    super.onInit();
    // Load data or initialize lists here
  }
}
