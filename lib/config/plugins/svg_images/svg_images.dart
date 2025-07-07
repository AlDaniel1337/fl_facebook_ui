import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgImage extends StatelessWidget {

  final String url;
  final ColorFilter colorFilter;
  final bool useColorfilter;
  final double? width;
  final double? height;
   
  const SvgImage({
    super.key, 
    required this.url,
    this.width,
    this.height,
    this.colorFilter = const ColorFilter.mode( Colors.blueAccent, BlendMode.srcIn ), 
    this.useColorfilter = true,
  });
  
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset( 
      url, 
      width: width, height: height,
      colorFilter: useColorfilter ? colorFilter : null,
    );
  }
}