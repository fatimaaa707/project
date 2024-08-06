// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class infocard extends StatelessWidget {
  final String titale;
  final String description;
  final IconData icon;

  const infocard({
    super.key,
    required this.titale,
    required this.description,
    required this.icon,
  });

  get bold => null;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: ListTile(
          leading: Icon(
            icon,
            size: 20,
            color: Color.fromARGB(223, 245, 118, 171),
          ),
          title: Text(
            titale,
            style: TextStyle(
              fontSize: 16,
              fontWeight: bold,
              color: Colors.black,
            ),
          ),
          subtitle: Text(
            description,
            style: TextStyle(
              fontSize: 14,
              color: Colors.black54,
            ),
          ),
        ),
      ),
    );
  }
}
