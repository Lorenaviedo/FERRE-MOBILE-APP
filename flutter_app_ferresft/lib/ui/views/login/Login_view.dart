import 'package:flutter/material.dart';
import 'package:flutter_app_ferresft/widgets/BottomNavBar.dart';
import 'package:get/get.dart';

import 'package:flutter_app_ferresft/widgets/Header.dart';
import 'package:flutter_app_ferresft/ui/views/login/SignUp_view.dart';
import 'package:flutter_app_ferresft/widgets/TextFieldCustom.dart';
import '../../../utils/global.colors.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static String id = "login_View";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(top: 0),
        physics: const BouncingScrollPhysics(),
        children: const [
          SizedBox(
            height: 80,
          ),
          Stack(children: [
            HeaderLogin(),
            //LogoHeader(),
          ]),
          SizedBox(
            height: 20,
          ),
          Title(),
          SizedBox(
            height: 10,
          ),
          EmailAndPassword(),
          ForgotPassword(),
          SizedBox(
            height: 30,
          ),
          ButtonSignIn(),
          SubTitle(),
        ],
      ),
    );
  }
}

// ----------------------------------------------------------------
class Title extends StatelessWidget {
  const Title({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Text(
            'Inicia Sesión',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

// ------------------- SECOND TITLE
class SubTitle extends StatelessWidget {
  const SubTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            '¿No tienes cuenta?',
            style: TextStyle(fontSize: 18),
          ),
          TextButton(
            onPressed: () {
              Get.to(const SignUpView());
            },
            child: const Text(
              'Registrate',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  //decoration: TextDecoration.underline,
              ),
            ),
          )
        ],
      ),
    );
  }
}

// -----------------------------------------------
class EmailAndPassword extends StatelessWidget {
  const EmailAndPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          TextFieldCustom(
            type: TextInputType.emailAddress,
            icon: Icons.email_outlined,
            label: 'Correo electrónico',
            hint: 'Ingresa tu correo electrónico',
          ),
          const SizedBox(
            height: 10,
          ),
          TextFieldCustom(
            type: TextInputType.visiblePassword,
            icon: Icons.password_outlined,
            label: 'Contraseña',
            hint: 'Ingresa tu contraseña',
            pass: true,
          ),
        ],
      ),
    );
  }
}

// -----------------------------------------------

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 25, top: 25),
      alignment: Alignment.centerRight,
      child: const Text(
        '¿Olvidaste tu contraseña?',
        style: TextStyle(color: Colors.blue),
      ),
    );
  }
}

// -----------------------------------------------

class ButtonSignIn extends StatelessWidget {
  const ButtonSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(25),
        decoration: BoxDecoration(
            color: GlobalColors.btnColor1,
            borderRadius: const BorderRadius.all(Radius.circular(6))),
        child: TextButton(
          onPressed: () => { Get.to(const BottomNavbar())},
          child: const Text(
            'INICIAR SESIÓN',
            style: TextStyle(
                height: 3.1,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ));
  }
}
