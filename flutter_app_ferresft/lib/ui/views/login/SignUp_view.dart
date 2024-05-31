import 'package:flutter/material.dart';
import 'package:flutter_app_ferresft/ui/views/login/Login_view.dart';
import 'package:flutter_app_ferresft/widgets/Header.dart';
import 'package:flutter_app_ferresft/widgets/Logo.dart';

import '../../../utils/Global.colors.dart';
import '../../../widgets/TextFieldCustom.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
            padding: const EdgeInsets.only(top: 0),
            physics: const BouncingScrollPhysics(),
            children: const [
          Stack(
            children: [HeaderLogin(), LogoHeader()],
          ),
          Title(),
          TextFields(),
          ButtonSignUp(),
        ]));
  }
}

// ------------------------------------------------------------------------------------------------

class Title extends StatelessWidget {
  const Title({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LoginView()));
            },
            child: const Text(
              'SIGN IN',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
          ),
          const Text('/', style: TextStyle(fontSize: 25, color: Colors.grey)),
          TextButton(
            onPressed: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginView()));
            }, 
            child: Text(
              'SIGN UP',
              style: TextStyle(
                fontSize: 25, 
                fontWeight: FontWeight.bold,
                color: GlobalColors.secondaryColor
              ),
            )
          )
        ],
      ),
    );
  }
}

// ----------------------------------

class TextFields  extends StatelessWidget {
  const TextFields ({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          TextFieldCustom(
            type: TextInputType.text, 
            icon: Icons.person_outline, 
            label: 'User', 
            hint: 'Enter Username'
          ),
          const SizedBox(
            height: 20,
          ),
          TextFieldCustom(
            type: TextInputType.emailAddress, 
            icon: Icons.email_outlined, 
            label: 'Email', 
            hint: 'Enter your Email'
          ),
          const SizedBox(
            height: 20,
          ),
          TextFieldCustom(
            type: TextInputType.phone, 
            icon: Icons.phone_outlined, 
            label: 'Phone', 
            hint: 'Enter phone number'
          ),
          const SizedBox(
            height: 20,
          ),
          TextFieldCustom(
            type: TextInputType.visiblePassword, 
            icon: Icons.password_outlined,  
            label: 'Password', 
            hint: 'Enter Password'
          ),
          const SizedBox(
            height: 20,
          )
        ],
      )
    );
  }
}

// ----------------------------------------------

class ButtonSignUp extends StatelessWidget {
  const ButtonSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: GlobalColors.primaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(50))
      ),
      child: TextButton(
        onPressed: () => {},
        child: const Text(
          'SIGN UP', 
          style: TextStyle(
            height: 3.1,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white
          )
        )
      )
    );
  }
}
