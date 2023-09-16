import 'package:flutter/material.dart';

class Alerta extends StatefulWidget {
  final TextEditingController controllerName;
  final TextEditingController controllerEmail;
  final TextEditingController controllerBirth;
  final TextEditingController controllerPhone;

  Alerta({
    super.key,
    required this.controllerName,
    required this.controllerEmail,
    required this.controllerBirth,
    required this.controllerPhone,
  });

  @override
  State<Alerta> createState() => _AlertaState();
}

class _AlertaState extends State<Alerta> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Center(child:  Text('Dados cadastrados', style: TextStyle(color: Colors.red, fontWeight:  FontWeight.bold),)),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         
          Text.rich(TextSpan(children: [
           const TextSpan(text: 'Nome: ', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
            TextSpan(text: widget.controllerName.text )
          ],),),
          Text.rich(TextSpan(children: [
           const TextSpan(text: 'E-mail: ', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
            TextSpan(text: widget.controllerEmail.text )
          ],),),
          Text.rich(TextSpan(children: [
           const TextSpan(text: 'Nascimento: ', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
            TextSpan(text: widget.controllerBirth.text )
          ],),),
          Text.rich(TextSpan(children: [
           const TextSpan(text: 'Telefone: ', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
            TextSpan(text: widget.controllerPhone.text )
          ],),),
         
        ],
      ),
      actions: [
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
          
            style: ElevatedButton.styleFrom(backgroundColor: Colors.black, 
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)) ),
            onPressed: () {
              widget.controllerName.text = '';
              widget.controllerBirth.text = '';
              widget.controllerEmail.text = '';
              widget.controllerPhone.text = '';
        
              Navigator.pop(context);
            },
            child: const Text('OK'),
          ),
        ),
      ],
    );
  }
}
