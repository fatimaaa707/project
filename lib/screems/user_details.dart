// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_4/models/user.dart';
import 'package:flutter_application_4/widgets/info_card.dart';

import '../widgets/text_card.dart';

class UserDetails extends StatelessWidget {
  final User user;
  final String imagePah;
  const UserDetails({
    required this.user,
    required this.imagePah,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ID #${user.id}'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    clipBehavior: Clip.hardEdge,
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(imagePah),
                  ),
                  Text(
                    '${user.name}',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '@${user.username}',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                  infocard(
                      titale: 'email',
                      description: user.email,
                      icon: Icons.email),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextCard(text: 'street', subtext: user.address['street']),
                      TextCard(text: 'suite', subtext: user.address['suite']),
                      TextCard(text: 'city', subtext: user.address['city']),
                    ],
                  ),
                  infocard(
                      titale: 'phone',
                      description: user.phone,
                      icon: Icons.phone),
                  infocard(
                      titale: 'website',
                      description: user.website,
                      icon: Icons.web),
                  infocard(
                      titale: 'company',
                      description: user.company['name'],
                      icon: Icons.email),
                ]),
          ),
        ),
      ),
    );
  }
}
