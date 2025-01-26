import 'package:flutter/material.dart';

class  SideDrawerListTile extends StatelessWidget{
  final String title;
  final IconData icon;
  final Function onTap;

  const SideDrawerListTile({super.key, required this.title, required this.icon, required this.onTap});
@override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: Icon(icon),
      onTap: onTap(),
    );
  }

}