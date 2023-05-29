import 'package:flutter/material.dart';
import 'package:flutter_components/wigets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'fists_name': '',
      'last_name': '',
      'email': '',
      'password': '',
      'role': '',
    };
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInputField(
                  labelText: 'Nombre',
                  hintText: 'Nombre del usuario',
                  formProperty: 'fists_name',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  labelText: 'Apellido',
                  hintText: 'Apellido del usuario',
                  formProperty: 'last_name',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  labelText: 'Email',
                  hintText: 'Email del usuario',
                  keyboardType: TextInputType.emailAddress,
                  formProperty: 'email',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  labelText: 'Contraseña',
                  hintText: 'Contraseña del usuario',
                  formProperty: 'password',
                  formValues: formValues,
                  obscureText: true,
                ),
                const SizedBox(
                  height: 30,
                ),
                DropdownButtonFormField(
                  items: const [
                    DropdownMenuItem(
                      value: 'Admin',
                      child: Text('Admin'),
                    ),
                    DropdownMenuItem(
                      value: 'Superuser',
                      child: Text('Superuser'),
                    ),
                    DropdownMenuItem(
                      value: 'Developer',
                      child: Text('Developer'),
                    ),
                    DropdownMenuItem(
                      value: 'Jr. Developer',
                      child: Text('Jr. Developer'),
                    ),
                  ],
                  onChanged: (value) {
                    print(value);
                    formValues['role'] = value ?? 'Admin';
                  },
                ),
                ElevatedButton(
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());
                      if (!myFormKey.currentState!.validate()) {
                        print('Formulario no valido');
                        return;
                      }
                    },
                    child: const SizedBox(
                      width: double.infinity,
                      child: Center(child: Text('Guardar')),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
