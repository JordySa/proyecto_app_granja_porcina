import 'package:flutter/material.dart';

class LoginController extends StatefulWidget {
  const LoginController({super.key});

  @override
  State<LoginController> createState() => _LoginControllerState();
}

class _LoginControllerState extends State<LoginController> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 200, // Establece el ancho deseado
              height: 200, // Establece la altura deseada
              child: Image.network(
                  'https://img.freepik.com/vector-premium/cute-dibujos-animados-cerdito-sentado_188253-1304.jpg?w=2000'),
            ),
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            const SizedBox(height: 24.0),
            TextButton(
              child: const Text('Ingresar'),
              onPressed: () {
                gotoHome(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
  void gotoHome(BuildContext) {
    Navigator.of(context).pushNamed("/");
  }
}
