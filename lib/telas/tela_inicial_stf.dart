import 'package:flutter/material.dart';

/// Tela inicial feita usando um StatefulWidget, para ter um estado mutável.
class TelaInicialStf extends StatefulWidget {
  const TelaInicialStf({super.key});

  @override
  State<TelaInicialStf> createState() => _TelaInicialStfState();
}

class _TelaInicialStfState extends State<TelaInicialStf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Contador'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          OutlinedButton(
            onPressed: () {},
            child: const Text(
              'Zerar',
              style: TextStyle(
                color: Colors.red,
              ),
            ),
          ),
          Container(
            height: 200,
            width: 200,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(40),
            ),
            child: const Text(
              '0',
              style: TextStyle(
                color: Colors.white,
                fontSize: 60,
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add_rounded,
          size: 40,
        ),
      ),
    );
  }
}
