import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios_new_outlined),
            );
          },
        ),
        backgroundColor: Colors.red,
        title: const Text('Cadastro'),
        centerTitle: true,
      ),


      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children:[
              const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: 'Cadastre-se ', 
                    style: TextStyle(
                      fontWeight: FontWeight.bold, 
                      fontSize: 18, 
                      color: Colors.red)),
                    TextSpan(text: 'no nosso contador', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18))
                  ]
                ),
              ),

              const SizedBox(height: 60),

            Form(
              child: Column(
               children: [
                SizedBox(
                  width: 300,
                  height: 50,
                  child: TextFormField(
                  
                    decoration: InputDecoration(
                    labelText: 'Nome',
                    border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black), 
                    borderRadius: BorderRadius.circular(20))
                    ),
                  ),
                ),

              const SizedBox(height: 30),



               SizedBox(
                  width: 300,
                  height: 50,
                  child: TextFormField(
                  
                    decoration: InputDecoration(
                    labelText: 'E-mail',
                    border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black), 
                    borderRadius: BorderRadius.circular(20))
                    ),
                  ),
                ),

              const SizedBox(height: 30),


               SizedBox(
                  width: 300,
                  height: 50,
                  child: TextFormField(
                  
                    decoration: InputDecoration(
                    labelText: 'Nascimento',
                    border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black), 
                    borderRadius: BorderRadius.circular(20))
                    ),
                  ),
                ),


              const SizedBox(height: 30),


                SizedBox(
                  width: 300,
                  height: 50,
                  child: TextFormField(
                  
                    decoration: InputDecoration(
                    labelText: 'Telefone',
                    border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black), 
                    borderRadius: BorderRadius.circular(20))
                    ),
                  ),
                )

               ],
              ))



            ],
          ),
      ),

    );


  }
}