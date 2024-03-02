import 'package:get/get.dart';
import 'package:ostello_apps/models/appbar_model.dart';
import 'package:ostello_apps/models/service_model.dart';
import 'package:ostello_apps/models/marketplace_model.dart';
import 'package:ostello_apps/models/referral_model.dart';
import 'package:ostello_apps/models/quick_info_model.dart';
import 'package:ostello_apps/models/start_asessment_model.dart';
// Ensure that you don't import ServiceModel twice or any other model

class HomeController extends GetxController {
  // Remove the duplicate declaration from here if initializing below
  var topServices = <ServiceModel>[].obs;
  var marketplaceItems = <MarketplaceModel>[].obs;
  var referrals = <ReferralModel>[].obs;
  var quickInfos = <QuickInfoModel>[].obs;

  final Rx<String> referAndEarnImagePath = 'assets/images/refer-earn.png'.obs;

  final startAssessment = StartAssessmentModel(
    imagePath: 'assets/images/start-assessment-section.png',
    buttonText: 'Start Assessment',
  ).obs;

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
    // Initialize topServices here if not done above
    topServices.value = [
      ServiceModel(
        imagePath: 'assets/images/top-section-left.png',
        title: 'Left Service',
      ),
      ServiceModel(
        imagePath: 'assets/images/top-section-right.png',
        title: 'Right Service',
      ),
      ServiceModel(
        imagePath: 'assets/images/top-section-bottom.png',
        title: 'Bottom Service',
      ),
    ];
    // Load data or initialize other lists here
  }
}
