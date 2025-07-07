class FormatNumbers {

  static execute(double value){
    if( value <= 1000) return value.toString();

    return "${(value / 1000).toStringAsFixed( 1 )}k";
  }

}