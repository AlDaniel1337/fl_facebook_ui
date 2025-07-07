import 'package:flutter/material.dart';

class MyAspectRatio extends StatelessWidget {

  final Widget child;
   
  const MyAspectRatio({
    super.key, 
    required this.child
  });
  
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: child,
    );
  }
}