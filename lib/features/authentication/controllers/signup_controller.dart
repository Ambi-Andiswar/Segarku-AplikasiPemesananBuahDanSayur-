import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:segarku/utils/popups/full_screen_loader.dart';
import 'package:segarku/utils/constants/image_strings.dart';
import 'package:segarku/utils/network/network_manager.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  // Variables
  final email = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  // SIGNUP
  Future<void> signup() async {
    try {
      // Start Loading
      TFullscreenLoader.openLoadingDialog('', SImages.onBoardingImage1);

      // Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isconnected();

      // Form Validation
      // Privacy Policy Check
      // Register user in the Firebase Authentication & Save user data in the Firebase
      // Save Authenticated user data in the Firebase Firestore
      // Show Success Message
      // Move to Verify Email Screen
    } catch (e) {
      // Show some Generic Error to the user
    } finally {
      // Remove Loader
    }
  }
}
