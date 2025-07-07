import 'package:facebook_ui/widgets/quick_action_button.dart';
import 'package:flutter/material.dart';

class QuickActions extends StatelessWidget {
   
  const QuickActions({super.key});
  
  @override
  Widget build(BuildContext context) {

    List<QuickActionButtonProps> quickActionButtons = [
      QuickActionButtonProps(
        containerColor: Color(0xffECF8E9), 
        textColor: Color(0xFF9AC895), 
        iconColor: Color(0xffAEE2A4),
        text: "Gallery", 
        icon: Icons.image_sharp,
        shouldAddSpace: true,
      ),

      QuickActionButtonProps(
        containerColor: Color(0xffe8efff), 
        textColor: Color(0xFF85a3c1), 
        iconColor: Color(0xff83b6f7),
        text: "Tag Friends", 
        icon: Icons.people,
        shouldAddSpace: true,
      ),

      QuickActionButtonProps(
        containerColor: Color(0xfffde9e8), 
        textColor: Color(0xFFb58774), 
        iconColor: Color(0xfffaa68d),
        text: "Live", 
        icon: Icons.live_tv_rounded,
      ),
    ];


    return Padding(
      padding: const EdgeInsets.symmetric( horizontal: 20),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ...quickActionButtons.map( (buttonProps) => QuickActionButton(quickActionButtonProps: buttonProps) )
          ],
        ),
      ),
    );
  }
}