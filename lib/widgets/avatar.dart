import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {

  final double size;
  final String asset;
  final bool shouldUseBorder;
   
  const Avatar({
    super.key, 
    this.size = 50, 
    this.shouldUseBorder = false,
    required this.asset, 
  });
  
  @override
  Widget build(BuildContext context) {

    
    final bool isImageFromNetwork = asset.startsWith("http");

    return Center(
      child: Container(
        width: size, height: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage( 
            image: isImageFromNetwork 
              ? NetworkImage( asset )
              : AssetImage( asset ),
            fit: BoxFit.cover
          ),
          border: shouldUseBorder 
          ? Border.all( 
              width: 3,
              color: Colors.white
            )
          : null,
        ),
      ),
    );
  }
}