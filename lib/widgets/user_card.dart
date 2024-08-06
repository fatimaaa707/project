// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_4/models/user.dart';
import 'package:flutter_application_4/screems/user_details.dart';

class usercard extends StatelessWidget {
  final User user;
  final String ImagePath;
  const usercard({
    super.key,
    required this.user,
    required this.ImagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            width: 1.5,
            color: Color.fromARGB(255, 40, 78, 110),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 40,
              padding: EdgeInsets.only(left: 5),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(ImagePath),
              ),
            ),
            Column(
              children: [
                Text(
                  user.name,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  user.email,
                  style: TextStyle(
                    color: Color.fromARGB(255, 93, 90, 90),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 230, 130, 183),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(6),
                  bottomRight: Radius.circular(6),
                ),
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UserDetails(
                        user: user,
                        imagePah: ImagePath,
                      ),
                    ),
                  );
                },
                icon: Icon(Icons.arrow_forward_ios_rounded),
              ),
            )
          ],
        ),
      ),
    );
  }
}
