import 'package:flutter/material.dart';
import 'package:facebook_ui/facebook_ui/publications/publications.dart';
import 'package:facebook_ui/facebook_ui/components/quick_actions.dart';
import 'package:facebook_ui/facebook_ui/components/stories.dart';
import 'package:facebook_ui/facebook_ui/components/app_bar.dart';
import 'package:facebook_ui/facebook_ui/components/what_is_on_your_mind.dart';

class FacebookUiPage extends StatelessWidget {

  static const String route = "/facebook_ui";
   
  const FacebookUiPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
   
      appBar: const FacebookUiAppBar(),
   
      body: ListView(
        padding: const EdgeInsets.only(top: 15 ),
        children: [
          const WhatIsOnYourMind(),
          const SizedBox( height: 30 ),

          const QuickActions(),
          const SizedBox( height: 30 ),

          const Stories(),
          const SizedBox( height: 20 ),

          const Publications(),
        ],
      ),
    );
  }
}
