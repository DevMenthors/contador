
import 'package:contador/view/widgets/alerta.dart';
import 'package:contador/view/widgets/mixin_cotrole.dart';
import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> with ValidatorMixin{
  @override
  Widget build(BuildContext context) {
    
    final _formKey = GlobalKey<FormState>();
    final controllerName = TextEditingController();
    final controllerEmail = TextEditingController();
    final controllerBirth = TextEditingController();
    final controllerPhone = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
        ),
        backgroundColor: Colors.red,
        title: const Text('Cadastro'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            const Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Cadastre-se ',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Colors.red,
                    ),
                  ),
                  TextSpan(
                    text: 'no nosso contador.',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Form(
              // aqui foi criada uma key para o form onde foi declarada acima do
              // scaffold e ultilizada no onpessed
              key: _formKey,
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: TextFormField(
                      controller: controllerName,
                      decoration: InputDecoration(
                        
                        labelText: 'Nome',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          
                        ),
                        
                      ),
                      
                      // aqui mostra como é usado o message do
                      // mixin para mensagem personalizada
                      validator: (value) => isNotEmpty(value, 'Nome inválido!'),
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: TextFormField(
                      controller: controllerEmail,
                      decoration: InputDecoration(
                        labelText: 'E-mail',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      //Como chamamos o mixin para validar
                      validator: isNotEmpty,
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: TextFormField(
                      controller: controllerBirth,
                      decoration: InputDecoration(
                        labelText: 'Nascimento',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      validator: isNotEmpty,
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: TextFormField(
                      controller: controllerPhone,
                      decoration: InputDecoration(
                        labelText: 'Telefone',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      //Aqui podemos usar o mixin para multiplas validações
                      //como para verificar se está vazio 
                      //como se tem 11 caracteres
                      validator: (value) => combine([
                        () => isNotEmpty(value),
                        () => hasElevenChars(value),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: FilledButton(
                //chama todos os validators, caso seja validado mostra o alerta
                //caso contrario não mostra
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    showDialog<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return Alerta(
                          controllerName: controllerName,
                          controllerEmail: controllerEmail,
                          controllerBirth: controllerBirth,
                          controllerPhone: controllerPhone,
                        );
                      },
                    );
                  }
                },
                style: FilledButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                ),
                child: const Text('Enviar'),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}