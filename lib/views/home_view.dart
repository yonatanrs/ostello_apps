import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ostello_apps/controllers/home_controller.dart';
import 'package:ostello_apps/views/service_tile.dart';
import 'package:ostello_apps/views/marketplace_card.dart';
import 'package:ostello_apps/views/referral_card.dart';
import 'package:ostello_apps/views/quick_info_card.dart';
import 'package:ostello_apps/views/footer_guidance.dart';
import 'package:ostello_apps/views/bottom_appbar.dart';
import 'package:ostello_apps/views/start_asessment_card.dart';

class HomeView extends StatelessWidget {
  final HomeController homeController = Get.put(HomeController());
  final RxInt _selectedIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    // We use Obx here to make sure the UI updates when the user model changes
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // Ensure proper spacing
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Text('Hi ${homeController.currentUser.value.name}', style: TextStyle(fontSize: 20)),
                  DropdownButton<String>(
                    value: homeController.currentUser.value.location,
                    icon: const Icon(Icons.arrow_drop_down),
                    underline: Container(),
                    onChanged: (String? newValue) {
                      homeController.currentUser.update((user) {
                        user?.location = newValue;
                      });
                    },
                    items: <String>[
                      'Gandhinagar, Ahmedabad...',
                      'Mysuru, Karnataka...',
                      'Coimbatore, Tamil Nadu...',
                      // Add other locations here
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  // Handle the tap
                  print('Image tapped!');
                },
                child: Ink.image(
                  image: AssetImage('assets/images/profile.png'),
                  fit: BoxFit.cover,
                  width: 100,
                  height: 60,
                ),
              ),
            ),
          ],
        )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            StartAssessmentCard(
              imagePath: 'assets/images/start-assessment-section.png',
              buttonText: 'Start Assessment',
              onPressed: () {
                // Define what to do when the button is pressed
              },
            ),
            SizedBox(height: 33),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 16.0), // Atur sesuai kebutuhan
                child: Text(
                  "Top Services",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                  ),
                ),
              ),
            ),
            SizedBox(height: 7),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: homeController.topServices
                  .take(2) // Take the first two services for the top row
                  .map((service) => Expanded(
                child: ServiceTile(
                  service: service,
                  onTap: () {
                    // Handle your onTap here
                  },
                ),
              ))
                  .toList(),
            ),
            ServiceTile(
              service: homeController.topServices.last, // Assume the last one is for the bottom
              onTap: () {
                // Handle your onTap here
              },
            ),
            InkWell(
              onTap: () {
                print("Refer and Earn tapped");
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0), // Kurangi padding horizontal untuk mengurangi jarak
                child: Container(
                  width: double.infinity, // Mengisi lebar layar dengan padding
                  child: Ink.image(
                    image: AssetImage(homeController.referAndEarnImagePath.value),
                    fit: BoxFit.contain, // Memastikan gambar tidak terpotong
                    height: 150, // Atur tinggi sesuai kebutuhan, disesuaikan untuk menjaga proporsi
                  ),
                ),
              ),
            ),
            SizedBox(height: 33),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 16.0), // Atur sesuai kebutuhan
                child: Text(
                  "Marketplace",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                  ),
                ),
              ),
            ),
            SizedBox(height: 7),
            ...homeController.marketplaceItems.map((item) => MarketplaceCard(marketplaceItem: item)).toList(),
            ...homeController.referrals.map((referral) => ReferralCard(referral: referral)).toList(),
            ...homeController.quickInfos.map((info) => QuickInfoCard(info: info)).toList(),
            FooterGuidance(),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        width: 64, // Slightly larger than the FAB to show the shadow
        height: 64,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.purple.withAlpha(90), // Semi-transparent purple shadow
              blurRadius: 4, // Soft blur effect
              spreadRadius: -4, // Negative spread to contain the shadow close to the FAB
              offset: Offset(0, 1), // Small vertical offset
            ),
          ],
        ),
        child: FloatingActionButton(
          onPressed: () {
            // Define the action when FAB is pressed
          },
          child: Image.asset('assets/images/robot-face.png'), // Make sure the image path is correct
          backgroundColor: Colors.transparent, // FAB has a transparent background
          elevation: 0, // No default elevation
        ),
      ),
      bottomNavigationBar: Obx(() => CustomBottomAppBar(
        selectedIndex: _selectedIndex.value,
        onItemSelected: (index) {
          _selectedIndex.value = index;
          // Perform action based on the index, such as navigating to a page
        },
      )),
    );
  }
}
