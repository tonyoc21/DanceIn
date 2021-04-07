import 'package:flutter/material.dart';

final _icons = <String, IconData>{

  'eventos'     : Icons.turned_in,
  'accessibility' : Icons.accessibility,
  'academias'   : Icons.account_balance,
};

Icon getIcon (String nombreIcono){
  
  return Icon(_icons[nombreIcono],color:Colors.black);
}