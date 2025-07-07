import 'package:facebook_ui/facebook_ui/components/app_bar_icon_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:facebook_ui/config/assets/assets.dart';
import 'package:facebook_ui/config/plugins/svg_images/svg_images.dart';

class FacebookUiAppBar extends StatelessWidget implements PreferredSizeWidget{
   
  const FacebookUiAppBar({super.key});
  
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light
      ),
      elevation: 0,
      centerTitle: true,
      leading: SvgImage(url: AssetsUrl.facebookLogo.url),
      leadingWidth: 150,
      actions: [ const AppBarIconButtons() ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}