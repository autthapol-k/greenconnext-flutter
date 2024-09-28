import 'package:flutter/material.dart';
import 'package:greenconnext_ui/greenconnext_ui.dart';

import '../../assets/assets.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Assets.icons.icBSCM.svg(),
              const SizedBox(height: GCSpacing.lg),
              const SizedBox(
                width: 30,
                height: 30,
                child: CircularProgressIndicator(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
