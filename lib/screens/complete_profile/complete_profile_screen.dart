import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/complete_profile_form.dart';

class CompleteProfileScreen extends StatelessWidget {
  static String routeName = "/complete_profile";

  const CompleteProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 16),
                  const Text("Lengkapi Profilemu", style: headingStyle),
                  const Text(
                    "Lengkapi profil kamu  \n dengan benar",
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  const CompleteProfileForm(),
                  const SizedBox(height: 30),
                  Text(
                    "Dengan melanjutkan ini berarti kamu setuju \ndengan Syarat dan Ketentuan kami",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
