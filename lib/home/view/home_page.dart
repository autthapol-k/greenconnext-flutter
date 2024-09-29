import 'package:authenticate_repository/authenticate_repository.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FilledButton(onPressed: () {
                context.read<AuthenticateRepository>().signOut();
              }, child: const Text("Sign Out")),
            ],
          ),
        ),
      ),
    );
  }
}
