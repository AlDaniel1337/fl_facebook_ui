import 'package:flutter/material.dart';

class AppBarIconButtons extends StatelessWidget {
   
  const AppBarIconButtons({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _CicleIconButton( icon: Icons.search, buttonColor: Color(0xffBFBFBF),),
        _CicleIconButton( icon: Icons.add_alert_rounded, buttonColor: Color(0xffFE7574),),
        _CicleIconButton( icon: Icons.people, buttonColor: Color(0xff7BBAFF), showBadge: true,),
        _CicleIconButton( icon: Icons.message_rounded, buttonColor: Color(0xff1C86E4), ),
      ],
    );
  }
}

class _CicleIconButton extends StatelessWidget {

  final IconData icon;
  final Color buttonColor;
  final bool showBadge;

   
  const _CicleIconButton({
    required this.icon, 
    this.buttonColor = Colors.grey, 
    this.showBadge   = false,
  });
  
  @override
  Widget build(BuildContext context) {

    double buttonSize = 36.0;
    double iconSize   = 20.0;
    double spaceSize  = 15.0;

    return Row(
      children: [

        Stack(
          children: [

            Container(
              width: buttonSize, height: buttonSize,
              decoration: BoxDecoration(
                shape: BoxShape.circle, 
                color: buttonColor
              ),
              child: Icon(
                icon,
                color: Colors.white, 
                size: iconSize,
              ),
            ),
            
            if(showBadge) _AlertCircle()

          ],
        ),

        SizedBox( width: spaceSize )
      ],
    );
  }
}

class _AlertCircle extends StatelessWidget {
   
  const _AlertCircle();
  
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -2,
      right: 2,
      child: Container(
        width: 10, height: 10,
        decoration: BoxDecoration(
          shape: BoxShape.circle, 
          color: Colors.red,
          border: Border.all(
            width: 2,
            color: Colors.white
          )
        ),
      ),
    );
  }
}