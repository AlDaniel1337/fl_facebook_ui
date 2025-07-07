import 'package:flutter/material.dart';
import 'package:facebook_ui/config/assets/assets.dart';
import 'package:facebook_ui/widgets/avatar.dart';

class WhatIsOnYourMind extends StatelessWidget {
  const WhatIsOnYourMind({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric( horizontal: 20 ),
      child: Row(
        children: [
          Avatar(
            asset: AssetsUrl.avatar1.url,
            size: 50,
          ),
          
          const SizedBox(width: 20,),
      
          Flexible(
            child: const Text(
              "What's on your mind",
              style: TextStyle(
                color: Colors.grey
              ),
            ),
          )
        ],
      ),
    );
  }
}