import 'package:flutter/material.dart';

class FormularioPage extends StatefulWidget {
  const FormularioPage({Key? key}) : super(key: key);

  @override
  State<FormularioPage> createState() => _FormularioPageState();
}

class _FormularioPageState extends State<FormularioPage> {
  // String text = '';
  final formKey = GlobalKey<FormState>();
  final nameEditController = TextEditingController();
  String categoriaController = 'Categoria1';

  @override
  void dispose() {
    nameEditController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulario'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                // TextField(
                //   onChanged: (String value) {
                //     setState(
                //       () {
                //         text = value;
                //       },
                //     );
                //   },
                // ),
                // const SizedBox(height: 25),
                // Text('Texto digitado $text'),
                // TextFormField(
                //   controller: nameEditController,
                //   autovalidateMode: AutovalidateMode.onUserInteraction,
                //   validator: (String? value) {
                //     if (value == null || value.isEmpty) {
                //       return 'Campo X não preenchido';
                //     }
                //     return null;
                //   },
                // ),
                // TextFormField(
                //   autovalidateMode: AutovalidateMode.onUserInteraction,
                //   validator: (String? value) {
                //     if (value == null || value.isEmpty) {
                //       return 'Campo X não preenchido';
                //     }
                //     return null;
                //   },
                // ),
                // TextFormField(
                //   controller: nameEditController,
                //   autovalidateMode: AutovalidateMode.onUserInteraction,
                //   maxLines: null,
                //   validator: (String? value) {
                //     if (value == null || value.isEmpty) {
                //       return 'Campo X não preenchido';
                //     }
                //     return null;
                //   },
                // ),
                Form(
                  child: TextFormField(
                    controller: nameEditController,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    maxLines: null,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.greenAccent),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.amberAccent),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.green),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.red),
                      ),
                      label: const Text('Nome completo'),
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Campo X não preenchido';
                      }
                    },
                  ),
                ),
                const SizedBox(height: 20.0),
                TextFormField(
                  controller: nameEditController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.greenAccent),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.amberAccent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.green),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.red),
                    ),
                    label: const Text('Nome completo'),
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo X não preenchido';
                    }
                  },
                ),
                const SizedBox(height: 20,),
                DropdownButtonFormField<String>(
                  value: categoriaController,
                  elevation: 16,
                  icon: const Icon(Icons.abc),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.greenAccent),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.amberAccent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.green),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.red),
                    ),
                    label: const Text('Nome completo'),
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Categoria não escolhida';
                    }
                    return null;
                  },
                  onChanged: (String? newValue) {
                    if (newValue != null) {
                      setState(() {
                        categoriaController = newValue;
                      });
                    }
                  },
                  items: const [
                    DropdownMenuItem(
                      value: 'Categoria1',
                      child: Text('Categoria1'),
                    ),
                    DropdownMenuItem(
                      value: 'Categoria2',
                      child: Text('Categoria2'),
                    ),
                    DropdownMenuItem(
                      value: 'Categoria3',
                      child: Text('Categoria3'),
                    ),
                  ],
                ),
                ElevatedButton(
                    onPressed: () {
                      var message = 'Formulário Inválido';
                      if (formKey.currentState?.validate() ?? false) {
                        message =
                            'Formulário VALIDO. Valor digitado primeiro text form field -> ${nameEditController.text}';
                      }
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(message),
                      ));
                    },
                    child: const Text('Salvar'))
                //TextFormField(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
