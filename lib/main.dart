import 'dart:io';
import 'dart:math';

void main()
{

  double? R=double.parse(stdin.readLineSync()!);
  double pi=3.14159;
  double volume=4.0/3*pi*R*R*R;
  print('VOLUME = ${volume.toStringAsFixed(3)}');


}
