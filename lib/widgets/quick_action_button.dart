import 'package:facebook_ui/widgets/custom_material_container.dart';
import 'package:flutter/material.dart';

class QuickActionButtonProps {
  final Color containerColor;
  final Color textColor;
  final String text;

  final IconData icon;
  final Color iconColor;
  final double buttonSize;
  final double iconSize;

  final bool shouldAddSpace;
  final double buttonSpace;

  final Function()? onTap;

  QuickActionButtonProps({
    required this.containerColor, 
    required this.textColor, 
    required this.text, 
    required this.icon, 
    required this.iconColor, 
    this.buttonSize = 36.0, 
    this.iconSize = 20.0,
    this.onTap,
    this.shouldAddSpace = false,
    this.buttonSpace = 15,
  });
}

class QuickActionButton extends StatelessWidget {
   
  final QuickActionButtonProps quickActionButtonProps;
    
  const QuickActionButton({
    super.key, 
    required this.quickActionButtonProps,
  });
  
  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        CustomMaterialContainer(
          color: quickActionButtonProps.containerColor,
          onTap: quickActionButtonProps.onTap,
        
          child: Row(
            children: [
          
              _IconContainer(
                icon:       quickActionButtonProps.icon, 
                iconColor:  quickActionButtonProps.iconColor,
                buttonSize: quickActionButtonProps.buttonSize, 
                iconSize:   quickActionButtonProps.iconSize,
              ),
              _TextContainer(
                textColor:      quickActionButtonProps.textColor, 
                text:           quickActionButtonProps.text,
              ),
            ],
          ),
        ),

        if( quickActionButtonProps.shouldAddSpace ) SizedBox( width: quickActionButtonProps.buttonSpace )
      ],
    );
  }
}

class _TextContainer extends StatelessWidget {

  final Color textColor;
  final String text;
  
  const _TextContainer({
    required this.textColor, 
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.only(left: 5, right: 15),        
      child: Text(
        text,
        style: TextStyle(
          color: textColor
        ),
      ),
        
    );
  }
}


class _IconContainer extends StatelessWidget {

  final IconData icon;
  final Color iconColor;
  final double buttonSize;
  final double iconSize;

  const _IconContainer({
    required this.icon,
    required this.iconColor,
    required this.buttonSize,
    required this.iconSize, 
  });
  
  @override
  Widget build(BuildContext context) {

    return CustomMaterialContainer(
      color: iconColor,
      child: Container(
          width: buttonSize, height: buttonSize,
          decoration: const BoxDecoration(
            shape: BoxShape.circle, 
          ),
          child: Icon(
            icon,
            color: Colors.white, 
            size: iconSize,
          ),
        ), 
    );
  }
}
