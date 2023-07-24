import 'package:flutter/material.dart';

class LoginController extends StatefulWidget {
  const LoginController({super.key});

  @override
  State<LoginController> createState() => _LoginControllerState();
}

class _LoginControllerState extends State<LoginController> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200, // Establece el ancho deseado
              height: 200, // Establece la altura deseada
              child: Image.network(
                  'https://img.freepik.com/vector-premium/cute-dibujos-animados-cerdito-sentado_188253-1304.jpg?w=2000'),
            ),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            SizedBox(height: 24.0),
            TextButton(
              child: Text('Ingresar'),
              onPressed: () {
                gotoHome(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void gotoHome(BuildContext) {
    Navigator.of(context).pushNamed("/");
  }
}
