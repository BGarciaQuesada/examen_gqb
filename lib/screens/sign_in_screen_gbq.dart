import 'package:fl_examen_gqb/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myFormKey = GlobalKey<FormState>();

    final ValueNotifier<bool> _checkEnabled = ValueNotifier<bool>(true);

    final Map<String, String> formValues = {
      'user': 'user',
      'password': 'password',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Forms: Inputs'),
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(children: [
              CustomTextFormField(
                hintText: 'Usuario',
                labelText: 'Usuario',
                suffixIcon: Icons.person_2_outlined,
                obscureText: false,
                formProperty: 'nombre',
                formValues: formValues,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomTextFormField(
                hintText: 'Contraseña',
                labelText: 'Contraseña',
                obscureText: true,
                formProperty: 'apellidos',
                formValues: formValues,
              ),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    if (!myFormKey.currentState!.validate()) {
                      print('Hay errores en el formulario.');
                      return;
                    }
                  },
                  child: const SizedBox(
                      // Ocupar el ancho de la pantalla
                      width: double.infinity,
                      child: Text('Enviar'))),
            ]),
          )),
    );
  }
}