import 'package:evets_invoice_final/repository/user_repository.dart';
import 'package:evets_invoice_final/ui/register/register_screen.dart';
import 'package:flutter/material.dart';

class CreateAccountButton extends StatelessWidget {
  final UserRepository _userRepository;

  CreateAccountButton(
      { Key? key, required UserRepository userRepository})
      : _userRepository = userRepository,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text('Create an Account'),
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return RegisterScreen(
            userRepository: _userRepository, key: key!,
          );
        }));
      },
    );
  }
}
