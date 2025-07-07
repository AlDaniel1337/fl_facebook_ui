import 'package:flutter/material.dart';

class CustomMaterialContainer extends StatelessWidget {
   
  final double bottomLeftRadius;
  final double bottomRightRadius;
  final double topLeftRadius;
  final double topRightRadius;
  final Widget child;
  final Color color;
  final Function()? onTap;
   
  const CustomMaterialContainer({
    required this.child, 
    required this.color, 
    this.bottomLeftRadius  = 50,
    this.bottomRightRadius = 50,
    this.topLeftRadius     = 50,
    this.topRightRadius    = 50,
    this.onTap,
    super.key, 
  });
  
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.only( 
        bottomLeft:  Radius.circular(bottomLeftRadius), 
        bottomRight: Radius.circular(bottomRightRadius), 
        topLeft:     Radius.circular(topLeftRadius), 
        topRight:    Radius.circular(topRightRadius), 
      ),
      color: color,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.only( 
          bottomLeft:  Radius.circular(bottomLeftRadius), 
          bottomRight: Radius.circular(bottomRightRadius), 
          topLeft:     Radius.circular(topLeftRadius), 
          topRight:    Radius.circular(topRightRadius), 
        ),
        child: child
      ),
    );
  }
}