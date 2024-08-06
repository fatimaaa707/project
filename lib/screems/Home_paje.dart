import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/models/user.dart';
import 'package:flutter_application_4/provider/user_provider.dart';
import 'package:flutter_application_4/widgets/user_card.dart';
import 'package:provider/provider.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(227, 163, 207, 1),
        title: Text(
          'Users',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: userProvider.isLoading
            ? Center(child: CircularProgressIndicator())
            : userProvider.errorMessage != null
                ? Center(child: Text(userProvider.errorMessage!))
                : ListView.builder(
                    itemCount: userProvider.users.length,
                    itemBuilder: (context, index) {
                      User user = userProvider.users[index];
                      int n = Random().nextInt(4) + 1;
                      return usercard(
                        user: user,
                        ImagePath: 'assets/images/${n}.png',
                      );
                    }),
      ),
    );
  }
}
